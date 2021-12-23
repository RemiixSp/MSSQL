

Create view vCustomesrAndSalers as
Select c.cnum,c.cname,s.sname,s.snum,s.city
from Customers c 
inner join Salers s on c.snum=s.snum
