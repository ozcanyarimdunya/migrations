-- CREATE A GOOD PLAN
INSERT INTO "Plan" ("idPlan", "createdAt", "updatedAt",
                    "updatedBy", "createdBy",
                    "name", "code", "description", "isDeleted")
VALUES ('1e461ed2-43dd-4355-8718-a55533c203c4', DEFAULT, DEFAULT,
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000',
        'GOOD PLAN NAME', 'GOOD CODE', 'GOOD DESCRIPTION', DEFAULT);

-- CREATE A TEMPORARY TABLE TO SAVE OLD STYLE MemberID and NEW GENERATED uui4 STYLE MemberID
DROP TABLE IF EXISTS "#Holder";
CREATE TABLE "#Holder"
(
    "newMemberId" uuid DEFAULT uuid_generate_v4() NOT NULL PRIMARY KEY,
    "oldMemberId" varchar(50)                     NOT NULL
);

-- INSERT memberdata MemberID TO TEMPORARY TABLE AS oldMemberID
INSERT INTO "#Holder"("oldMemberId")
SELECT "MemberID"
FROM memberdata;