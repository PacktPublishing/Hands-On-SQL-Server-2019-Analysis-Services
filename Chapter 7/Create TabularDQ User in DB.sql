USE [WideWorldImportersDW]
GO
CREATE USER [TabularDQ] FOR LOGIN [TabularDQ] WITH DEFAULT_SCHEMA=[Cube]
GO
USE [WideWorldImportersDW]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TabularDQ]
GO
