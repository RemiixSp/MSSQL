USE AdventureWorks2019;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
BEGIN TRAN
SELECT SalesOrderID, SalesOrderDetailID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID = 43659


USE AdventureWorks2019;
UPDATE Sales.SalesOrderDetail 
SET OrderQty = 5 
 WHERE SalesOrderID = 43659 AND ProductID = 777


 SELECT * FROM sys.dm_os_waiting_tasks
WHERE session_id > 49 AND wait_duration_ms > 5000


SELECT (select SUBSTRING(text,statement_start_offset/2,
 (case when statement_end_offset = -1 then
 len(convert(nvarchar(max), text)) * 2 else
 statement_end_offset end -statement_start_offset)/2)
 from sys.dm_exec_sql_text(sql_handle)) as query_text 
 FROM sys.dm_os_waiting_tasks wt 
 JOIN sys.dm_exec_requests r ON r.session_id = wt.session_id 
 WHERE r.session_id > 50 AND wait_duration_ms > 5000 SELECT *
FROM sys.dm_exec_connections
WHERE session_id = 50 —Replace with your


