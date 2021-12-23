USE AdventureWorks2019
BEGIN TRAN
PRINT 'After 1st BEGIN TRAN: ' +
 CAST(@@trancount as char(1))
BEGIN TRAN
PRINT 'After 2nd BEGIN TRAN: ' +
 CAST(@@trancount as char(1))
BEGIN TRAN
PRINT 'After 3rd BEGIN TRAN: ' +
 CAST(@@trancount as char(1))
UPDATE Person.ContactType
SET Name = 'Adolf'
WHERE ContactTypeID = 20
COMMIT TRAN
PRINT 'After first COMMIT TRAN: ' +
 CAST(@@trancount as char(1))
ROLLBACK TRAN
PRINT 'After ROLLBACK TRAN: ' +
 CAST(@@trancount as char(1))
SELECT Name FROM Person.ContactType
WHERE ContactTypeID = 20;