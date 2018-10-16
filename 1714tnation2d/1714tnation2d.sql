--Tyler Nation
--Exercise 2D: Summary queries, groups, joins
--PropertyManager db

--2D.1) Columns: BuildingId, BuildingName, City, ApartmentNum, FirstName, LastName.  Sort by City, BuildingName, ApartmentNum, LastName, FirstName.
SELECT        Building.BuildingId, Building.BuildingName, Building.City, Apartment.ApartmentNum, Person.FirstName, Person.LastName
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Person ON Apartment.AdminId = Person.PersonId
ORDER BY Building.City, Building.BuildingName, Apartment.ApartmentNum, Person.LastName, Person.FirstName

--2D.2) Columns: PersonId, LastName, FirstName, City, BuildingId, BuildingName, ApartmentNum.  Sort by LastName, FirstName, BuildingId, ApartmentNum.
SELECT        Person.PersonId, Person.LastName, Person.FirstName, Building.City, Building.BuildingId, Building.BuildingName, Apartment.ApartmentNum
FROM            Person INNER JOIN
                         Apartment ON Person.PersonId = Apartment.TenantId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
ORDER BY Person.LastName, Person.FirstName, Building.BuildingId, Apartment.ApartmentNum

--2D.3) Columns: ApartmentNum, LastName, FirstName, InvoiceId, InvoiceDate, Description, Amount.  Sort by ApartmentNum, LastName, FirstName, InvoiceDate. Filter by BuildingId = 1
SELECT        Apartment.ApartmentNum, Person.LastName, Person.FirstName, Invoice.InvoiceId, Invoice.InvoiceDate, LineItem.Description, LineItem.Amount
FROM            Apartment INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
WHERE        (Apartment.BuildingId = 1)
ORDER BY Apartment.ApartmentNum, Person.LastName, Person.FirstName, Invoice.InvoiceDate

--2D.4) Columns: BuildingId, ApartmentId, LastName, FirstName, InvoiceId, InvoiceDate, Invoice Total.
SELECT        Apartment.BuildingId, Apartment.ApartmentId, Person.LastName, Person.FirstName, Invoice.InvoiceId, Invoice.InvoiceDate, Receipt.Amount AS [Invoice Total]
FROM            Apartment INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId

--2D.5) Columns: InvoiceId, InvoiceDate, BuildingId, ApartmentNum, LastName, FirstName, ReceiptDate, Receipt.Amount. Sort by InvoiceDate, ReceiptDate.
SELECT        Invoice.InvoiceId, Invoice.InvoiceDate, Apartment.BuildingId, Apartment.ApartmentNum, Person.LastName, Person.FirstName, Receipt.ReceiptDate, Receipt.Amount
FROM            Invoice INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId
ORDER BY Invoice.InvoiceDate, Receipt.ReceiptDate

--2D.6) Columns: InvoiceId, InvoiceDate, LastName, BuildingId, ApartmentNum, total billed, recieved.
SELECT        Invoice.InvoiceId, Invoice.InvoiceDate, Person.LastName, Apartment.BuildingId, Apartment.ApartmentNum, Receipt.Amount AS Billed, Receipt.Amount AS Received
FROM            Invoice INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Person ON Apartment.TenantId = Person.PersonId INNER JOIN
                         Receipt ON Invoice.InvoiceId = Receipt.InvoiceId

--2D.7) Columns: PersonId, admin LastName, InvoiceId, InvoiceDate, total billed, received.
SELECT        Person.PersonId, Person.LastName AS Admin, Invoice.InvoiceId, Invoice.InvoiceDate, Receipt.Amount AS Billed, Receipt.Amount AS Received
FROM            Receipt INNER JOIN
                         Invoice ON Receipt.InvoiceId = Invoice.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId INNER JOIN
                         Person ON Apartment.AdminId = Person.PersonId