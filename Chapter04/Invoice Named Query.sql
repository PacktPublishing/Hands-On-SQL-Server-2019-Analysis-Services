-- Invoice NAMED QUERY SQL

SELECT [WWI Invoice ID]
, [Invoice Date Key] as [Invoice Date]
, CAST(DATEPART(year, [Invoice Date Key]) AS VARCHAR) + '-' 
    + CAST(DATEPART(month, [Invoice Date Key]) AS VARCHAR) AS [Invoice Month]
, DATEPART(year, [Invoice Date Key]) AS [Invoice Year]
FROM Cube.Invoice
