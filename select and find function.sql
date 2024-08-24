Create Or Replace function checkprofit(productId varchar)
Returns varchar as $$
DECLARE
prof_Status varchar;
countOfprofit float ;
BEGIN
select sum(profit) as "status of profit" into countOfprofit from sales where product_id = productId;
case
when profit < 0 then prof_Status := 'worst profit';
when profit between 1 and 100 then prof_Status := 'AVG profit';
when profit between 101 and 200 then prof_Status := 'GOOD profit';
else prof_Status := 'GREAT profit';
end case;
RETURN prof_Status;
END;
$$ LANGUAGE Plpgsql
	


