USE tempdb;
GO
TRUNCATE TABLE table1;
GO
BEGIN TRAN
INSERT INTO table1 (i,col1,col2) VALUES (1,'First row','First row');
INSERT INTO table1 (i,col1,col2) VALUES (2,NULL,'Second row');
INSERT INTO table1 (i,col1,col2) VALUES (3,'Third row','Third row');
COMMIT TRAN;
GO
SELECT i,col1,col2
FROM table1;
--���������� � ���������� �������
BEGIN TRY
BEGIN TRAN
 INSERT INTO table1 (i,col1,col2) VALUES (1,'First row','First row');
 INSERT INTO table1 (i,col1,col2) VALUES (2,NULL,'Second row');
 INSERT INTO table1 (i,col1,col2) VALUES (3,'Third row','Third row');
COMMIT TRAN;
END TRY
BEGIN CATCH
SELECT ERROR_NUMBER() AS ErrorNumber,
ERROR_SEVERITY() AS ErrorSeverity,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
 ERROR_MESSAGE() as ErrorMessage;
 RAISERROR('Error in Transaction!',14,1)
 ROLLBACK TRAN
END CATCH;