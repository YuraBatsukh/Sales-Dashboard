--Cleaned Customer table--
SELECT
c.customerkey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
c.firstname AS [First Name],
      --,[MiddleName]
c.lastname AS [Last Name],
c.firstname + ' ' + LastName AS [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
CASE c.gender When 'M' then 'Male' WHen 'F' then 'Female' End AS Gender,

      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
c.datefirstpurchase AS DateFirstPurchase,
      --,[CommuteDistance]
g.city AS [Customer City] 
From dbo.DimCustomer AS c
	 Left join dbo.DimGeography AS g On g.GeographyKey = c.GeographyKey
Order By 
CustomerKey Asc 
