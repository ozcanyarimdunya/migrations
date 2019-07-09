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