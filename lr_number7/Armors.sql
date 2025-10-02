CREATE TABLE [dbo].[Armors]
(
	[ArmorId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Protection] INT NOT NULL CHECK([Protection] >= 0),
	[Type] NVARCHAR(20) NOT NULL,
	[Spell] NVARCHAR(50),
)
