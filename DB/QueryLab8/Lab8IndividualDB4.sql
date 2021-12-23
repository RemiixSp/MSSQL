Set transaction isolation level Serializable 
begin tran
Select DoctorId,DoctorName,DoctorSurname
from Doctors
where DoctorID = 4
Commit tran