use WideWorldImportersDW;
go

create table Dimension.Users (
	[User Key] int identity(1,1) not null
	, [User Login] varchar(100) not null
	, [User Email] varchar(200) null
	, constraint PK_Dimension_User primary key clustered ([User Key])
	)

create table Fact.UserSalesTerritory (
	[User Key] int,
	[Sales Territory] nvarchar(50),
	[Is Allowed] bit
	)
;



insert Dimension.Users ([User Login],[User Email])
select 'steveh-yoga\ssasuser01','ssasuser01@msn.com'
union select 'steveh-yoga\ssasuser02','ssasuser02@msn.com';

insert Fact.UserSalesTerritory ([Sales Territory],[User Key],[Is Allowed])
select 'Great Lakes', [User Key], 1 from Dimension.Users where [User Login] like 'steveh-yoga\ssasuser01'
union select 'Plains', [User Key], 1 from Dimension.Users where [User Login] like 'steveh-yoga\ssasuser02';

go
create view Cube.Users as (select [User Key], [User Login], [User Email] from Dimension.Users);
go

create view Cube.[User Sales Territory] as 
(select distinct ust.[User Key]
	, ust.[Sales Territory]
	, ust.[Is Allowed]
	, dc.[City Key]
from Fact.UserSalesTerritory ust inner join Dimension.City dc 
	on ust.[Sales Territory] = dc.[Sales Territory])

go