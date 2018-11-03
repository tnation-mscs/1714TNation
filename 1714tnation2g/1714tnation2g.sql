-- 1) Building, apartment, admins
SELECT        Buildings.Id, Buildings.BuildingName, Buildings.City, Apartments.ApartmentNum, People.FirstName + N' ' + People.LastName AS Admin
FROM            Buildings INNER JOIN
                         Apartments ON Buildings.Id = Apartments.Building_Id INNER JOIN
                         People ON Apartments.Tenant_Id = People.Id
ORDER BY Buildings.Id

-- 2) Apartments, invoices, line items for
SELECT        Buildings.Id AS Building_Id, Apartments.ApartmentNum, People.FirstName + N',' + N' ' + People.LastName AS Tenant, Invoices.Id, LineItems.Description, LineItems.Amount
FROM            Buildings INNER JOIN
                         Apartments ON Buildings.Id = Apartments.Building_Id INNER JOIN
                         People ON Apartments.Tenant_Id = People.Id INNER JOIN
                         Invoices ON Apartments.Id = Invoices.Apartment_Id INNER JOIN
                         LineItems ON Invoices.Id = LineItems.Invoice_Id
ORDER BY Apartments.ApartmentNum DESC

-- 3) Tenants, invoices, receipts
SELECT        People.Id, People.FirstName + N',' + N' ' + People.LastName AS Tenant, Receipts.Invoice_Id, Invoices.DueDate, Receipts.ReceiptDate, Receipts.Amount
FROM            Invoices INNER JOIN
                         Receipts ON Invoices.Id = Receipts.Invoice_Id INNER JOIN
                         People INNER JOIN
                         Apartments ON People.Id = Apartments.Tenant_Id ON Invoices.Apartment_Id = Apartments.Id
ORDER BY People.Id DESC
