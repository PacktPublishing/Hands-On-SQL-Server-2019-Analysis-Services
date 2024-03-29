USE [WideWorldImportersDW]
GO
CREATE OR ALTER VIEW [Cube].[Item]
AS
SELECT [Stock Item Key]
      ,[WWI Stock Item ID]
      ,[Stock Item]
      ,[Color]
      ,[Selling Package]
      ,[Buying Package]
      ,[Brand]
      ,[Size]
      ,[Lead Time Days]
      ,[Quantity Per Outer]
      ,[Is Chiller Stock]
      ,[Barcode]
      ,[Tax Rate]
      ,[Unit Price]
      ,[Recommended Retail Price]
      ,[Typical Weight Per Unit]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[Stock Item];
GO

CREATE OR ALTER VIEW [Cube].[Item-Current]
AS
SELECT [Stock Item Key]
      ,[WWI Stock Item ID]
      ,[Stock Item]
      ,[Color]
      ,[Selling Package]
      ,[Buying Package]
      ,[Brand]
      ,[Size]
      ,[Lead Time Days]
      ,[Quantity Per Outer]
      ,[Is Chiller Stock]
      ,[Barcode]
      ,[Tax Rate]
      ,[Unit Price]
      ,[Recommended Retail Price]
      ,[Typical Weight Per Unit]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[Stock Item]
  WHERE [Valid To] > '9999-01-01';
GO
