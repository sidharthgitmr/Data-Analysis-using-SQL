select * from sales;
select Customers,Amount,Customers from sales;

select Amount,Boxes, Amount / Boxes as 'Amount per boxes' from sales;

select * from sales
where Amount < 10000;

select * from sales
where Amount > 10000 
order by Amount;

select * from sales
where Amount > 10000 
order by Amount desc;


select * from sales
where GeoID='g1'
order by PID,Amount desc;


select * from sales
where Amount > 10000 and SaleDate >='2022-01-01';

select SaleDate,Amount from sales
where Amount > 10000 and year(Saledate) = 2022
order by amount desc;


select * from sales
where Boxes > 0 and Boxes <= 50;

select * from sales
where Boxes between 0 and 50;

select SaleDate,Amount,Boxes,weekday(saledate) as 'day of week' from sales
where weekday(saledate) = 4;

select * from people;


select * from people
where team = 'delish' or team = 'Jucies';


select * from people
where team in ('delish','jucie');

select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

select saledate,Amount,
		case     when amount <1000 then 'under 1k' 
			 when amount <5000 then 'under 5k' 
			 when amount <10000 then 'under 10k'
           else '10k or more'
		end as 'amount category'       
from sales;

