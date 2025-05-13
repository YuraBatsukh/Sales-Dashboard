--Cleaned DimDate data will show from 2022-- 
SELECT 
[DateKey] ,
[FullDateAlternateKey] AS Date,
[EnglishDayNameOfWeek] AS Day, 
[WeekNumberOfYear] AS WeekNr,
[EnglishMonthName] AS Month,
LEFT([EnglishMonthName], 3) AS MonthShort,
[MonthNumberOfYear] AS MonthNr,
[CalendarQuarter] AS Quarter,
[CalendarYear] AS Year
FROM 
[AdventureWorksDW2019].[dbo].[DimDate]
Where 
CalendarYear >= 2022