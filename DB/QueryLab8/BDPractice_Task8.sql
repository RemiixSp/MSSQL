Select c.CustFirstName,c.CustLastName,c.CustPhoneNumber,c.CustCity, ms.StyleName from Customers c
JOIN Musical_Preferences mp on mp.CustomerID = c.CustomerID
JOIN Musical_Styles ms on ms.StyleID = mp.StyleID
Where c.CustCity = 'Bellevue'
and ms.StyleName like 'Classic%'

