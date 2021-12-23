
CREATE VIEW vMainDoctor AS
SELECT Clients.ClientName, Clients.ClientSurname, Clients.DateOfBirth, Clients.ClientPhone
FROM Clients JOIN Visits ON Clients.ClientID = Visits.ClientID
join Doctors on Doctors.DoctorID = Visits.DoctorID
WHERE Doctors.DoctorName = SUSER_NAME()  OR EXISTS (
SELECT * FROM Doctors d
where d.DoctorName = SUSER_NAME()  and d.Position = 'mainDoctor'
)