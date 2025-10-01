CREATE TABLE [dbo].[Inventory]
(
	[PlayerId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[ItemId] NVARCHAR(10) NOT NULL,
	[Quantity] INT NOT NULL CHECK([Quantity] > 0),
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)
