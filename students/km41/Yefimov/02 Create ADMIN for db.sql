
-- from login as 'sysadmin'


USE [master]
GO
CREATE LOGIN [compadmin] WITH PASSWORD=N'123', DEFAULT_DATABASE=[Coursework], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [compadmin]
GO
USE [Coursework]
GO
CREATE USER [compadmin] FOR LOGIN [compadmin]
GO
USE [Coursework]
GO
ALTER USER [compadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [Coursework]
GO
ALTER ROLE [comp_admins] ADD MEMBER [compadmin]
GO
USE [Coursework]
GO
ALTER ROLE [comp_viewers] ADD MEMBER [compadmin]
GO

USE [master]
GO
CREATE LOGIN [admincomp] WITH PASSWORD=N'123', DEFAULT_DATABASE=[Coursework], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [Coursework]
GO
CREATE USER [admincomp] FOR LOGIN [admincomp]
GO
USE [Coursework]
GO
ALTER USER [admincomp] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [Coursework]
GO
ALTER ROLE [comp_admins] ADD MEMBER [admincomp]
GO
USE [Coursework]
GO
ALTER ROLE [comp_viewers] ADD MEMBER [admincomp]
GO
