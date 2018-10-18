--Tyler Nation
--Exercise 2E: Functions, calculated fields
--PropertyManager db

--2E.1) Columns: BuildingName, Address, City+State+Zip. Filter: Winona, MN
SELECT        BuildingName, Address, City + N', ' + State + N' ' + Zip AS [City State Zip]
FROM            Building
WHERE        (State = N'MN') AND (City = N'Winona')

--2E.2) Columns: BuildingName, ApartmentNum, SquareFeet * 0.9 plus 100.00 per bathroom. Filter: Red Wing, MN
SELECT        Building.BuildingName, Apartment.ApartmentNum, Apartment.SquareFeet * 0.9 + 100.0 * Apartment.Bathrooms AS [Estimated Rent]
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
WHERE        (Building.City = N'Red Wing') AND (Building.State = N'MN')

--2E.3) Columns: BuildingName, ApartmentNum, Rent, EstimatedRent, Rent - EstimatedRent. Filter: Red Wing, MN
SELECT        Building.BuildingName, Apartment.ApartmentNum, Apartment.Rent, Apartment.SquareFeet * 0.9 + 100.0 * Apartment.Bathrooms AS [Estimated Rent], (Apartment.SquareFeet * 0.9 + 100.0 * Apartment.Bathrooms - Apartment.Rent) 
                         * - 1 AS Difference
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
WHERE        (Building.City = N'Red Wing') AND (Building.State = N'MN')

--2E.4) Columns: BuildingId, ApartmentNum, Tenant FirstName+LastName, InvoiceDate, total LineItem.Amount.
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS InvoiceTotal
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId
GROUP BY Invoice.InvoiceDate, Invoice.InvoiceId, Apartment.ApartmentId, Apartment.ApartmentNum, Building.BuildingId, Person.FirstName + N' ' + Person.LastName, Person.PersonId, Apartment.TenantId
HAVING        (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-21 00:00:00', 102) AND CONVERT(DATETIME, '2018-10-21 00:00:00', 102))
ORDER BY InvoiceTotal

--2E.5) Columns: BuildingId, ApartmentNum, Tenant FirstName+LastName, InvoiceDate, total LineItem.Amount, Receipt.Amount.
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS InvoiceTotal, Receipt.Amount
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
GROUP BY Invoice.InvoiceDate, Invoice.InvoiceId, Apartment.ApartmentId, Apartment.ApartmentNum, Building.BuildingId, Person.FirstName + N' ' + Person.LastName, Person.PersonId, Apartment.TenantId, Receipt.Amount
HAVING        (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-21 00:00:00', 102) AND CONVERT(DATETIME, '2018-10-21 00:00:00', 102))
ORDER BY InvoiceTotal

--2E.6) Columns: BuildingId, ApartmentNum, Tenant FirstName+LastName, InvoiceDate, total LineItem.Amount, Receipt.Amount, total LineItem.Amount - Receipt.Amount. Filter: Received less than total Invoice.Amount
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Name, Invoice.InvoiceDate, SUM(LineItem.Amount) AS InvoiceTotal, Receipt.Amount, SUM(LineItem.Amount) 
                         - Receipt.Amount AS Difference
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
GROUP BY Invoice.InvoiceDate, Invoice.InvoiceId, Apartment.ApartmentId, Apartment.ApartmentNum, Building.BuildingId, Person.FirstName + N' ' + Person.LastName, Person.PersonId, Apartment.TenantId, Receipt.Amount
HAVING        (Invoice.InvoiceDate BETWEEN CONVERT(DATETIME, '2018-09-21 00:00:00', 102) AND CONVERT(DATETIME, '2018-10-21 00:00:00', 102)) AND (SUM(LineItem.Amount) - Receipt.Amount > 0)
ORDER BY InvoiceTotal

--2E.7) Columns: BuildingId, ApartmentNum, tenant FirstName+LastName, days late. Filter: days late > 0
SELECT        Building.BuildingId, Apartment.ApartmentNum, Person.FirstName + N' ' + Person.LastName AS Tenant, Invoice.DueDate, Receipt.ReceiptDate, DATEDIFF(day, Invoice.DueDate, Receipt.ReceiptDate) AS [Days Late]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId
WHERE        (DATEDIFF(day, Invoice.DueDate, Receipt.ReceiptDate) > 0)

--2E.8) Columns: PersonId, tenant FirstName + LastName, most recent InvoiceDate, most recent InvoiceDate + 1 month.
SELECT        Person.PersonId, Person.FirstName + N' ' + Person.LastName AS Tenant, MAX(Invoice.InvoiceDate) AS [Recent Invoice], MAX(DATEADD(month, 1, Invoice.InvoiceDate)) AS [Next Invoice]
FROM            Person INNER JOIN
                         Apartment ON Person.PersonId = Apartment.TenantId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId
GROUP BY Person.PersonId, Person.FirstName + N' ' + Person.LastName