-- Replace {YOUR PATH HERE} with the install path or sql data location you are using

USE [master]
RESTORE DATABASE [WideWorldImportersDW] 
FROM  DISK = N'{YOUR PATH HERE}\MSSQL\Backup\WideWorldImportersDW-Full.bak' 
WITH  FILE = 1,  
MOVE N'WWI_Primary' TO N'{YOUR PATH HERE}\MSSQL\DATA\WideWorldImportersDW.mdf',  
MOVE N'WWI_UserData' TO N'{YOUR PATH HERE}\MSSQL\DATA\WideWorldImportersDW_UserData.ndf',  
MOVE N'WWI_Log' TO N'{YOUR PATH HERE}\MSSQL\DATA\WideWorldImportersDW.ldf',  
MOVE N'WWIDW_InMemory_Data_1' TO N'{YOUR PATH HERE}\MSSQL\DATA\WideWorldImportersDW_InMemory_Data_1',  
NOUNLOAD,  
STATS = 5

GO


