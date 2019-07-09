----------------------------------------------------~
-- START -------------------------------------------|
----------------------------------------------------~

BEGIN;

----------------------------------------------------~
-- FUNCTIONS ---------------------------------------|
----------------------------------------------------~

-- CONVERTER FOR EXCEL DATE FORMAT
CREATE OR REPLACE FUNCTION convert_excel_date(givenDate varchar) RETURNS TIMESTAMP WITHOUT TIME ZONE AS
$$
declare
    _convertedDate integer;
begin
    if givenDate IS NULL then
        return null;
    elseif givenDate = 'Unknown' then
        return null;
    else
        _convertedDate := givenDate::integer;
        if _convertedDate > 59 then
            _convertedDate = _convertedDate - 1;
        end if;
        return date '1899-12-31' + _convertedDate;
    end if;
exception
    when others then
        return null;
end;
$$ LANGUAGE PLPGSQL;

-- CONVERTER FOR gender COLUMNS
CREATE OR REPLACE FUNCTION convert_gender(givenGender varchar) RETURNS varchar AS
$$
begin
    if givenGender = 'Male' then
        return 'm';
    else
        return 'f';
    end if;
end;
$$ LANGUAGE PLPGSQL;

-- CONVERTER FOR vested COLUMN
CREATE OR REPLACE FUNCTION convert_vested(givenVested varchar) RETURNS boolean AS
$$
begin
    if givenVested IS NULL then
        return false;
    elseif givenVested = 'Unknown' then
        return false;
    else
        return true;
    end if;
end;
$$ LANGUAGE PLPGSQL;

----------------------------------------------------~
-- INITIALS ----------------------------------------|
----------------------------------------------------~

-- CREATE A GOOD PLAN
INSERT INTO "Plan" ("idPlan",
                    "createdAt",
                    "updatedAt",
                    "updatedBy",
                    "createdBy",
                    "name",
                    "code",
                    "description",
                    "isDeleted")
VALUES ('00000000-0000-5555-0000-000000000000', DEFAULT, DEFAULT, '00000000-0000-4000-0000-000000000000',
        '00000000-0000-4000-0000-000000000000', 'A PLAN NAME', 'A CODE', 'A DESCRIPTION', DEFAULT);

-- CREATE A TEMPORARY TABLE TO SAVE OLD STYLE MemberID and NEW GENERATED uui4 STYLE MemberID
DROP TABLE IF EXISTS "#Holder";
CREATE TABLE "#Holder"
(
    "newMemberId" UUID DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
    "oldMemberId" varchar(50)                     NOT NULL
);

-- INSERT memberdata MemberID TO TEMPORARY TABLE AS oldMemberID
INSERT INTO "#Holder"("oldMemberId")
SELECT "MemberID"
FROM memberdata;


----------------------------------------------------~
-- MIGRATIONS --------------------------------------|
----------------------------------------------------~

-- MIGRATE Member TABLE FROM memberdata TABLE
DO
$$
    declare
        _memberdata  memberdata;
        oldMemberId  varchar;
        _newMemberId uuid;
        _userId      uuid    := '00000000-0000-4000-0000-000000000000';
        _planId      uuid    := '00000000-0000-5555-0000-000000000000';
        _sin         integer := 123; -- :( SIN cannot be null, but no data for SIN currently set it an integer
    begin
        for _memberdata in
            select *
            from memberdata
            loop
                select "oldMemberId", "newMemberId"
                from "#Holder"
                where "oldMemberId" = _memberdata."MemberID"
                into oldMemberId, _newMemberId;


                insert into "Member"("idMember", "createdAt", "updatedAt", "updatedBy", "createdBy", "SIN",
                                     "employeeNumber", "firstName", "lastName", "dateOfBirth", "dateOfDeath",
                                     gender, "maritalStatus", language, "maritalBreakdown", address,
                                     "postalCode", city, country_id, province_id, phone, email, "customOne",
                                     "customTwo", "customThree", "customFour", plan_id, "isDeleted")
                values (_newMemberId, default, default, _userId, _userId, _sin, null,
                        trim(split_part(_memberdata.name, ',', 2)), trim(split_part(_memberdata.name, ',', 1)),
                        convert_excel_date(_memberdata."dateOfBirth"), null, convert_gender(_memberdata.gender),
                        null, _memberdata.language,
                        null, null, null, null, null, null, null, null, null, null, null, null, _planId, default);

            end loop;
    end ;
$$;

-- MIGRATE Account TABLE FROM MEMBERDATA TABLE
do
$$
    declare
        _memberdata    memberdata;
        _oldMemberId   varchar;
        _newMemberId   uuid;
        _userId        uuid    := '00000000-0000-4000-0000-000000000000';
        _planId        uuid    := '00000000-0000-5555-0000-000000000000';
        _accountNumber integer := 123; -- :( cannot be null, but we don't have such data or i don't know
    begin
        for _memberdata in
            select *
            from memberdata
            loop
                select "oldMemberId", "newMemberId"
                from "#Holder"
                where "oldMemberId" = _memberdata."MemberID"
                into _oldMemberId, _newMemberId;

                insert into "Account"("idAccount", "createdAt", "updatedAt", "updatedBy", "createdBy", member_id,
                                      "accountNumber", "employerProvince_id", "dateOfDeath", "dateOfRetirement",
                                      "dateOfTermination", "dateOfTransferIn", "dateOfTransferOut", vested,
                                      "dateOfEntry", "dateOfHire", "normalRetirementDate", "earlyRetirementDate",
                                      "earlyUnreducedRetirementDate", "growIn", plan_id, "customOne", "customTwo",
                                      "customThree", "customFour", "isDeleted")
                VALUES (default, default, default, _userId, _userId, _newMemberId, _accountNumber,
                        null, null, null, null, null, null, convert_vested(_memberdata.vested),
                        convert_excel_date(_memberdata."dateOfEntry"), convert_excel_date(_memberdata."dateOfHire"),
                        convert_excel_date(_memberdata."normalRetirementDate"),
                        convert_excel_date(_memberdata."earlyRetirementDate"),
                        convert_excel_date(_memberdata."earlyUnreducedRetirementDate"), default, _planId,
                        null, null, null, null, default);

            end loop;
    end ;
$$;

-- MIGRATE Contribution TABLE FROM contributions TABLE
do
$$
    declare
        _contributions contributions;
        _oldMemberId   varchar;
        _newMemberId   uuid;
        _accountId     uuid;
        _userId        uuid := '00000000-0000-4000-0000-000000000000';
        _planId        uuid := '00000000-0000-5555-0000-000000000000';
    begin
        for _contributions in
            select *
            from contributions
            loop
                select "oldMemberId", "newMemberId"
                from "#Holder"
                where "oldMemberId" = _contributions."MemberID"
                into _oldMemberId, _newMemberId;

                select "idAccount"
                from "Account"
                where member_id = _newMemberId
                into _accountId;

                -- insert for each year

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2010, cast(_contributions."2010cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20100101', 'YYYYMMDD'), to_date('20101231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2011, cast(_contributions."2011cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20110101', 'YYYYMMDD'), to_date('20111231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2012, cast(_contributions."2012cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20120101', 'YYYYMMDD'), to_date('20121231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2013, cast(_contributions."2013cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20130101', 'YYYYMMDD'), to_date('20131231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2014, cast(_contributions."2014cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20140101', 'YYYYMMDD'), to_date('20141231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2015, cast(_contributions."2015cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20150101', 'YYYYMMDD'), to_date('20151231', 'YYYYMMDD'), default);

                insert into "Contribution"("idContribution", "createdAt", "updatedAt", "updatedBy", "createdBy",
                                           account_id, "periodEndYear", contributions, "contributionNotes", plan_id,
                                           "customOne", "customTwo", "customThree", "customFour", "eeBuybackAmount",
                                           "startDate", "endDate", "isDeleted")
                VALUES (default, default, default, _userId, _userId,
                        _accountId, 2016, cast(_contributions."2016cont" as numeric(15, 2)), null, _planId,
                        null, null, null, null, null,
                        to_date('20160101', 'YYYYMMDD'), to_date('20161231', 'YYYYMMDD'), default);
            end loop;
    end ;
$$;

-- MIGRATE Earning TABLE FROM earnings AND service TABLES
do
$$
    declare
        _earningAndService cursor for select *
                                      from earnings earn
                                               full outer join service serv on earn."MemberID" = serv."MemberID";
        _oldMemberId varchar;
        _newMemberId uuid;
        _accountId   uuid;
        _userId      uuid := '00000000-0000-4000-0000-000000000000';
        _planId      uuid := '00000000-0000-5555-0000-000000000000';
    begin
        for _es in _earningAndService
            loop
                select "oldMemberId", "newMemberId"
                from "#Holder"
                where "oldMemberId" = _es."MemberID"
                into _oldMemberId, _newMemberId;

                select "idAccount"
                from "Account"
                where member_id = _newMemberId
                into _accountId;

                -- loop through for each year columns


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1979earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1979service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19790101', 'YYYYMMDD'), to_date('19791231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1980earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1980service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19800101', 'YYYYMMDD'), to_date('19801231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1981earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1981service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19810101', 'YYYYMMDD'), to_date('19811231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1982earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1982service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19820101', 'YYYYMMDD'), to_date('19821231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1983earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1983service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19830101', 'YYYYMMDD'), to_date('19831231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1984earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1984service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19840101', 'YYYYMMDD'), to_date('19841231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1985earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1985service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19850101', 'YYYYMMDD'), to_date('19851231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1986earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1986service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19860101', 'YYYYMMDD'), to_date('19861231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1987earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1987service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19870101', 'YYYYMMDD'), to_date('19871231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1988earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1988service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19880101', 'YYYYMMDD'), to_date('19881231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1989earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1989service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19890101', 'YYYYMMDD'), to_date('19891231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1990earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1990service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19900101', 'YYYYMMDD'), to_date('19901231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1991earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1991service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19910101', 'YYYYMMDD'), to_date('19911231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1992earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1992service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19920101', 'YYYYMMDD'), to_date('19921231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1993earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1993service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19930101', 'YYYYMMDD'), to_date('19931231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1994earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1994service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19940101', 'YYYYMMDD'), to_date('19941231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1995earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1995service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19950101', 'YYYYMMDD'), to_date('19951231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1996earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1996service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19960101', 'YYYYMMDD'), to_date('19961231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1997earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1997service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19970101', 'YYYYMMDD'), to_date('19971231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1998earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1998service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19980101', 'YYYYMMDD'), to_date('19981231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."1999earning" as numeric(15, 2)), null,
                        null, null, cast(_es."1999service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('19990101', 'YYYYMMDD'), to_date('19991231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2000earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2000service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20000101', 'YYYYMMDD'), to_date('20001231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2001earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2001service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20010101', 'YYYYMMDD'), to_date('20011231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2002earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2002service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20020101', 'YYYYMMDD'), to_date('20021231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2003earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2003service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20030101', 'YYYYMMDD'), to_date('20031231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2004earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2004service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20040101', 'YYYYMMDD'), to_date('20041231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2005earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2005service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20050101', 'YYYYMMDD'), to_date('20051231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2006earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2006service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20060101', 'YYYYMMDD'), to_date('20061231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2007earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2007service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20070101', 'YYYYMMDD'), to_date('20071231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2008earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2008service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20080101', 'YYYYMMDD'), to_date('20081231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2009earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2009service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20090101', 'YYYYMMDD'), to_date('20091231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2010earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2010service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20100101', 'YYYYMMDD'), to_date('20101231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2011earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2011service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20110101', 'YYYYMMDD'), to_date('20111231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2012earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2012service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20120101', 'YYYYMMDD'), to_date('20121231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2013earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2013service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20130101', 'YYYYMMDD'), to_date('20131231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2014earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2014service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20140101', 'YYYYMMDD'), to_date('20141231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2015earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2015service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20150101', 'YYYYMMDD'), to_date('20151231', 'YYYYMMDD'),
                        default);


                insert into "Earning"("idEarning", "createdAt", "updatedAt", "updatedBy", "createdBy", account_id,
                                      "periodEndYear", "taxYear", "pensionEarningsRaw", "pensionEarningsAdjustment",
                                      "hoursRaw", "hoursAdjustment", "serviceRaw", "serviceAdjustment", "earningNotes",
                                      plan_id, "customOne", "customTwo", "customThree", "customFour",
                                      "hoursAdjustmentNote", "serviceAdjustmentNote", "startDate", "endDate",
                                      "isDeleted")
                values (default, default, default, _userId, _userId, _accountId,
                        null, null, cast(_es."2016earning" as numeric(15, 2)), null,
                        null, null, cast(_es."2016service" as numeric(15, 2)), null, null,
                        _planId, null, null, null, null,
                        null, null, to_date('20160101', 'YYYYMMDD'), to_date('20161231', 'YYYYMMDD'),
                        default);


            end loop;
    end ;
$$;

-- DELETE TEMPORARY TABLE, THANKS FOR HIS HELP.
DROP TABLE IF EXISTS "#Holder";

COMMIT;

----------------------------------------------------~
-- END ---------------------------------------------|
----------------------------------------------------~