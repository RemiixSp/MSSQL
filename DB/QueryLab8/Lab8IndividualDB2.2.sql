Begin tran 
update Doctors 
Set DoctorName = 'Taras'
where DoctorID = 4
waitfor delay '00:00:10'
Rollback tran
Select DoctorID,DoctorName,DoctorSurname
from Doctors
Where DoctorID = 4