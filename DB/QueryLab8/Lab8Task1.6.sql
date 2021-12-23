USE master;
ALTER DATABASE AdventureWorks2019
SET READ_COMMITTED_SNAPSHOT ON

USE AdventureWorks2019;
BEGIN TRAN
UPDATE Person.ContactType
SET Name = 'Adolf'
 WHERE ContactTypeID = 1;

 USE AdventureWorks2019;
BEGIN TRAN
SELECT Name,ModifiedDate
 FROM Person.ContactType 
 WHERE ContactTypeID = 1;


 ROLLBACK TRAN
GO
USE master;
ALTER DATABASE AdventureWorks2019
SET READ_COMMITTED_SNAPSHOT OFF