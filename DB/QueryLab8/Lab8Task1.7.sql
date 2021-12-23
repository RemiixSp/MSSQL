USE master;
ALTER DATABASE AdventureWorks2019
SET ALLOW_SNAPSHOT_ISOLATION ON;


USE AdventureWorks2019;
SET TRANSACTION ISOLATION LEVEL SNAPSHOT
BEGIN TRAN
SELECT SUM(LineTotal) as OrderTotal 
 FROM Sales.SalesOrderDetail 
 WHERE SalesOrderID = 43659


 USE AdventureWorks2019;
UPDATE Sales.SalesOrderDetail 
SET OrderQty = 5 
 WHERE SalesOrderID = 43659 AND ProductID = 777


 SELECT SUM(LineTotal) as OrderTotal 
 FROM Sales.SalesOrderDetail 
 WHERE SalesOrderID = 43659

 COMMIT TRAN
SELECT SUM(LineTotal) as OrderTotal 
 FROM Sales.SalesOrderDetail WHERE SalesOrderID = 43659


 ALTER DATABASE AdventureWorks2019
SET ALLOW_SNAPSHOT_ISOLATION OFF;


