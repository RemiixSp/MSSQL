Set transaction isolation level read uncommitted ;
Go 
begin tran
Select DoctorID,DoctorName,DoctorSurname
from Doctors
where DoctorID = 4
Commit tran