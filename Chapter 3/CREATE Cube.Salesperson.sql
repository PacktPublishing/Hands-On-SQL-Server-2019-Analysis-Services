USE [WideWorldImportersDW]
GO
CREATE OR ALTER VIEW [Cube].[Salesperson]
AS
SELECT [Employee Key]
      ,[WWI Employee ID]
      ,[Employee]
      ,[Preferred Name]
	  ,SUBSTRING([Employee],CHARINDEX(' ', [Employee])+1, LEN([Employee])) AS [Last Name]
	  ,SUBSTRING([Employee],1,CHARINDEX(' ', [Employee])) AS [First Name]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[Employee]
  WHERE [Is Salesperson] = 1;
GO
CREATE OR ALTER VIEW [Cube].[Salesperson-Current]
AS
SELECT [Employee Key]
      ,[WWI Employee ID]
      ,[Employee]
      ,[Preferred Name]
	  ,SUBSTRING([Employee],CHARINDEX(' ', [Employee])+1, LEN([Employee])) AS [Last Name]
	  ,SUBSTRING([Employee],1,CHARINDEX(' ', [Employee])) AS [First Name]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[Employee]
  WHERE [Is Salesperson] = 1
    AND [Valid To] > '9999-01-01';
GO
