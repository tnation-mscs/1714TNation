--Tyler Nation
--Exercise 2C: Summary queries, groups, joins
--PropertyManager db

--2C.1) Columns: State, City, count buildings.  Group by State, City.
SELECT        State, City, COUNT(BuildingName) AS [Building Count]
FROM            Building
GROUP BY State, City

--2C.2) Columns: City, count buildings.  Group by City. Filter: MN
SELECT        City, COUNT(City) AS [Building Count]
FROM            Building
GROUP BY City, State
HAVING        (State = N'MN')

--2C.3) Columns: BuildingNum, BuildingName, average rent.  Group by BuildingNum, BuildingName.
SELECT        Building.BuildingId, Building.BuildingName AS BuildingNum, AVG(Apartment.Rent) AS [Avg Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Building.BuildingId

--2C.4) Columns: City, BuildingName, total rent.  Group by City, BuildingName. Filter: MN
SELECT        Building.City, Building.BuildingName, SUM(Apartment.Rent) AS [Total Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City, Building.BuildingName, Building.State
HAVING        (Building.State = N'MN')

--2C.5) Columns: Cheapest rent.  Group by City.
SELECT        Building.City, MIN(Apartment.Rent) AS [Min Rent]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.City

--2C.6) Columns: BuildingName, Smallest size, avg size, largest size.  Group by BuildingName. Filter: Available in Winona
SELECT        Building.BuildingName, MIN(Apartment.SquareFeet) AS [Smallest Size], AVG(Apartment.SquareFeet) AS [Average Size], MAX(Apartment.SquareFeet) AS [Largest  Size]
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingName, Building.City, Apartment.TenantId
HAVING        (Building.City = N'Winona') AND (Apartment.TenantId IS NULL)

--2C.7) Columns: InvoiceId, cheapest price.  Group by InvoiceId. Filter: Garage during Sep 2018
SELECT        MIN(LineItem.Amount) AS [Cheapest Garage Sep2018]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
WHERE        (LineItem.Description = N'Garage') AND (Invoice.InvoiceDate >= CONVERT(DATETIME, '2018-09-01 00:00:00', 102)) AND (Invoice.InvoiceDate <= CONVERT(DATETIME, '2018-09-30 00:00:00', 102))

--2C.8) Columns: InvoiceId, total amount billed.  Group by InvoiceId. Filter: Sep 2018
SELECT        Invoice.InvoiceId, SUM(LineItem.Amount) AS [Total Amount]
FROM            Invoice INNER JOIN
                         LineItem ON Invoice.InvoiceId = LineItem.InvoiceId
WHERE        (Invoice.InvoiceDate >= CONVERT(DATETIME, '2018-09-01 00:00:00', 102)) AND (Invoice.InvoiceDate <= CONVERT(DATETIME, '2018-09-30 00:00:00', 102))
GROUP BY Invoice.InvoiceId