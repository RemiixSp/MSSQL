USE AdventureWorks2019;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
BEGIN TRAN
SELECT SalesOrderID, SalesOrderDetailID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID = 43659INSERT INTO Sales.SalesOrderDetail
 (SalesOrderID,CarrierTrackingNumber,
OrderQty,ProductID,SpecialOfferID,UnitPrice,UnitPriceDiscount)
 VALUES(43659,'4911-403C-98',1,758,1,874,0)