CREATE VIEW vCustomersBySaler AS
SELECT c.cname, c.city, c.rating
FROM Customers c join  SalersAndCustomers sc ON c.cnum = sc.cnum
Join Salers s ON sc.snum = s.snum
WHERE s.sname = SUSER_NAME()  OR EXISTS (
SELECT * FROM Salers s
where s.sname = SUSER_NAME()  and s.isboss = 1
)
