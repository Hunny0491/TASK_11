select * from sales

	
 --- 1st Function ---

create or replace function Quant(quantity int)
Returns varchar as $$
Declare
    Output varchar;
Begin
    If quantity > 5 then output := 'good sale';
    else output := 'Avg sale';
    end if;
	return output;
end
$$ language plpgsql

select Quant(quantity) from sales where quantity = 4

select Quant(quantity) from sales where quantity = 6



--- 2nd Function ---

	
select distinct ship_mode from sales

	
Create or replace function delivery_class(ship_mode varchar)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
          when ship_mode = 'same day' then output := 'best service';
          when ship_mode = 'first class' then output := 'speed service';
          when ship_mode = 'second class' then output := 'fast service';
          else output := 'good service';
    end case;
	return delivery_class;
end
$$ LANGUAGE plpgsql;


select delivery_class(ship_mode) from sales where ship_mode  ='same day'

select delivery_class(ship_mode) from sales where ship_mode ='second class'


	
	select *  from customer


	
  ---3rd Function ---


select distinct segment from customer
	
	
create or replace function seg_class(segment varchar)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
    when segment = 'Corporate' then output := 'best service';
    when segment = 'Home Office' then output := 'speed service';
    when segment = 'Consumer' then output := 'fast service';
    else output := 'good service';
    end case;
	return output;
end 
$$ language plpgsql;


select seg_class(segment) from customer where segment  = 'Corporate'


select seg_class(segment) from customer where segment  = 'Consumer'


	
---4th Function ---


select distinct age from customer
	
	
create or replace function p_age(age int)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
    when age < 24 then output := 'teenage';
    when age between 25 and 40 then output := 'young';
    else output := 'old';
    end case;
	return output;
end 
$$ language plpgsql;


select p_age(age) from customer where age = 28

select p_age(age) from customer where age = 66

select p_age(age) from customer where age = 18



         select * from product 

	
	
   --- 5th Function ---

	
select distinct category from product


create or replace function categorical(category varchar)
Returns varchar as $$
Declare
    Output varchar;
Begin
	case
    when category = 'Furniture' then output := 'Wood';
    when category = 'Technology' then output := 'Computer';
    else output := 'Stationary';
    end case;
	return output;
end 
$$ language plpgsql;


select categorical(category) from product where category = 'Furniture'

select categorical(category) from product




