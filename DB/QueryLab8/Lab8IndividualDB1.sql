Begin try 
begin tran
insert into Services(ServiceID,ServiceName,Price) Values (1,'Bandaging',1488);
--insert into Services(ServiceID,ServiceName,Price) Values (99,Null,30);
commit tran; 
end try
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