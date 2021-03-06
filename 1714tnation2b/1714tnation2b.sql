--Tyler Nation
--Exercise 2B: Summary queries
--PropertyManager db

--2B.1) Count all buildings
SELECT        COUNT(*) AS [Count All Buildings]
FROM            Building

--2B.2) Count building in Winona
SELECT        COUNT(*) AS [Count Buildings In Winona]
FROM            Building
GROUP BY City
HAVING        (City = N'Winona')

--2B.3) Average rent of all apartments
SELECT        AVG(Rent) AS [Average Rent Of All Apartments]
FROM            Apartment

--2B.4) Total rent for apartments in building 1
SELECT        SUM(Rent) AS [Total Rent Apartments In Building 1]
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)

--2B.5) Cheapest rent in building 2
SELECT        MIN(Rent) AS [Cheapest Rent In Apartment 2]
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 2)

--2B.6) Smallest size, avg size, largest size in building 1
SELECT        MIN(SquareFeet) AS [Smallest Size], AVG(SquareFeet) AS [Avg Size], MAX(SquareFeet) AS [Largest Size]
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)

--2B.7) Cheapest priced garage
SELECT        MIN(Amount) AS [Cheapest Garage]
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'Garage')

--2B.8) Total amount billed for gas
SELECT        SUM(Amount) AS [Total Amount Billed For Gas]
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'Gas')

--2B.9) Total rent for October
SELECT        SUM(Amount) AS [Total October Rent]
FROM            LineItem
GROUP BY Description
HAVING        (Description = N'Rent, October 2018')