CREATE TABLE [dbo].[Inventory]
(
	[PlayerId] NVARCHAR(6) NOT NULL,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Quantity] INT NOT NULL CHECK([Quantity] > 0),
	PRIMARY KEY ([PlayerId], [ItemId]),
	FOREIGN KEY ([PlayerId]) REFERENCES [Players]([PlayerId]),
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)