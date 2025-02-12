﻿CREATE TABLE [dbo].[Volunteer]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50),
	[PhoneNumber] NVARCHAR(50),
	[Email] NVARCHAR(50),
	[City] NVARCHAR(50),
	[JoinDate] DATETIME,
	[Status] NVARCHAR(50) NOT NULL,
	[Role] NVARCHAR(50),
	[RoleId] INT NOT NULL,
    CONSTRAINT FK_Volunteer_Role FOREIGN KEY (RoleId) REFERENCES UserRole(Id)
)
