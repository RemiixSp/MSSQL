USE AdventureWorks2019;
BEGIN TRAN
SELECT Name,ModifiedDate
 FROM Person.ContactType 
 WHERE ContactTypeID = 1;


 USE AdventureWorks2019;
 BEGIN TRAN
UPDATE Person.ContactTYPE
SET Name = 'Adolf'
 WHERE ContactTypeID = 1; SELECT Name,ModifiedDate 
 FROM Person.ContactType 
 WHERE ContactTypeID = 1;

 SELECT resource_type, resource_associated_entity_id,
request_mode, request_status
FROM sys.dm_tran_locks


