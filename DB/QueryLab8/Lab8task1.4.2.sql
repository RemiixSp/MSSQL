USE AdventureWorks2019;
GO
BEGIN TRAN
SELECT Name, ModifiedDate
 FROM Person.ContactType WITH (HOLDLOCK)
 WHERE ContactTypeID= 15



 USE AdventureWorks2019;
GO
BEGIN TRAN
SELECT Name, ModifiedDate
 FROM Person.ContactType WITH (HOLDLOCK)
 WHERE ContactTypeID<7000


 SELECT resource_type, resource_associated_entity_id, 
 request_mode,request_status 
 FROM sys.dm_tran_locks dml
 INNER JOIN sys.dm_tran_current_transaction dmt
 ON dml.request_owner_id = dmt.transaction_id;
COMMIT TRAN


USE AdventureWorks2019;
GO
BEGIN TRAN
UPDATE Person.ContactType
SET Name ='Taras'
 WHERE ContactTypeID =25;
SELECT resource_type, resource_associated_entity_id,
 request_mode,request_status 
 FROM sys.dm_tran_locks dml 
 INNER JOIN sys.dm_tran_current_transaction dmt
 ON dml.request_owner_id = dmt.transaction_id;
ROLLBACK TRAN


