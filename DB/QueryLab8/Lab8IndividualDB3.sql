Set transaction isolation level read committed ;
Go 
begin tran
Select DoctorID,DoctorName,DoctorSurname
from Doctors
where DoctorID = 4
Commit tran