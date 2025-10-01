CREATE TABLE [dbo].[Armors]
(
	[ArmorId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	[Protection] INT NOT NULL CHECK([Protection] >= 0),
	[Type] NVARCHAR(20) NOT NULL
)
