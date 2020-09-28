USE [WideWorldImportersDW]
GO
CREATE OR ALTER VIEW [Cube].[Date]
AS
SELECT [Date]
      ,[Day Number]
      ,[Day]
      ,[Month]
      ,[Short Month]
      ,[Calendar Month Number]
      ,[Calendar Month Label]
      ,[Calendar Year]
      ,[Calendar Year Label]
      ,[Fiscal Month Number]
      ,[Fiscal Month Label]
      ,[Fiscal Year]
      ,[Fiscal Year Label]
      ,[ISO Week Number]
  FROM [Dimension].[Date]
GO

