USE [WideWorldImportersDW]
GO

CREATE OR ALTER VIEW [Cube].[City]
	AS
	SELECT [City Key]
      ,[WWI City ID]
      ,[City]
      ,[State Province]
      ,[Country]
      ,[Continent]
      ,[Sales Territory]
      ,[Region]
      ,[Subregion]
      ,[Location]
      ,[Latest Recorded Population]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[City]
  ;
  GO

  CREATE OR ALTER VIEW [Cube].[City - Current]
	AS
	SELECT [City Key]
      ,[WWI City ID]
      ,[City]
      ,[State Province]
      ,[Country]
      ,[Continent]
      ,[Sales Territory]
      ,[Region]
      ,[Subregion]
      ,[Location]
      ,[Latest Recorded Population]
      ,[Valid From]
      ,[Valid To]
	  ,CASE WHEN [Valid To] > '9999-01-01' THEN 1 ELSE 0 END AS [Current]
      ,[Lineage Key]
  FROM [Dimension].[City]
  WHERE [Valid To] > '9999-01-01'
  ;
