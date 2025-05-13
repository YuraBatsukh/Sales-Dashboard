SELECT 
[ProductKey], 
[OrderDateKey], 
[DueDateKey], 
[ShipDateKey], 
[CustomerKey], 
[SalesOrderNumber], 
[SalesAmount] 
From [dbo].[FactInternetSales] WHere Left (orderdatekey, 4) >= YEAR(GETDATE()) -5 Order By OrderDateKey ASC