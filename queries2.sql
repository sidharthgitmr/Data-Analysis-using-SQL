select * from people;

select * from sales;

select s.SaleDate,s.Amount,s.Amount,p.Salesperson,s.SPID,p.spid
 from sales s
 join people p on p.SPID = s.SPID;
 
 
 select s.SaleDate, s.SaleDate,pr.product
 from sales s
 left join products pr on s.PID = pr.PID;
 
 
  select s.SaleDate, s.Amount,p.Salesperson,pr.Product,p.Team
 from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID;


  select s.SaleDate, s.Amount,p.Salesperson,pr.Product,p.Team
 from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.Amount < 500;



 select s.SaleDate, s.Amount,p.Salesperson,pr.Product,p.Team
 from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.Amount < 500
and p.Team = 'delish';


 select s.SaleDate, s.Amount,p.Salesperson,pr.Product,p.Team
 from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.Amount < 500
and p.Team = '';


 select s.SaleDate, s.Amount,p.Salesperson,pr.Product,p.Team
 from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and p.Team = ''
and g.Geo in ('new zeland ','india')
order by SaleDate;


 
 
 
 
 
 
 