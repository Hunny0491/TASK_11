select * from titanic


   --- 1st Function ---

create or replace function pass_class(pclass varchar)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
    when pclass = '1st' then output := 'CHEIF GUEST';
    when pclass = '2nd' then output := 'VIP';
    else output := 'ORDINARY';
    end case;
	return output;
end 
$$ language plpgsql;


select pass_class(pclass) from titanic where pclass = '2nd'

select pass_class(pclass) from titanic



   ---2nd Function ---


create or replace function price(fare int)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
    when fare < 39000 then output := '3rd Class';
    when fare between 40000 and 60000 then output := '2nd Class';
    else output := '1st Class';
    end case;
	return output;
end 
$$ language plpgsql;


select price(fare) from titanic where FARE > 50000

select price(fare) from titanic where FARE < 30000

select price(fare) from titanic
