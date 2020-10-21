USE [WideWorldImportersDW]
GO
CREATE OR ALTER VIEW [Cube].[Customer]
AS
SELECT [Customer Key]
      ,[WWI Customer ID]
      ,[Customer]
      ,[Bill To Customer]
      ,[Category]
      ,[Buying Group]
      ,[Primary Contact]
      ,[Postal Code]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[Customer]
GO


