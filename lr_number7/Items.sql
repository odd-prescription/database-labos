CREATE TABLE [dbo].[Items]
(
	[ItemId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(200),
	[Price] INT NOT NULL CHECK([Price] >= 0),
	[Weight] INT NOT NULL CHECK([Weight] >= 0)
)
