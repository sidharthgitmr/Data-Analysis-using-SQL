select GeoID,sum(Amount) ,avg(Amount),sum(Boxes)
from sales
group by GeoID;


select g.Geo,sum(Amount) ,avg(Amount),sum(Boxes)
from sales s
join geo g on g.GeoID = s.GeoID
group by g.geo;


select pr.Category,p.Team,sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by  pr.Category,p.Team;




select pr.Category,p.Team,sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by  pr.Category,p.Team
order by pr.Category,p.Team;



select pr.Category,p.Team,sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <> ''
group by  pr.Category,p.Team
order by pr.Category,p.Team;





select pr.product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount' desc;



select pr.product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount' desc
limit 10;