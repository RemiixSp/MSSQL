
Create view vClientsAndServices as
SELECT Date, c.ClientName as ClientName, s.ServiceName as ServiceName
FROM Visits v JOIN Clients c ON v.PatientID = c.ClientID 
JOIN Services s ON v.ServiceID = s.ServiceID;

Select*from vClientsAndServices