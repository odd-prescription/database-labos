CREATE TABLE [dbo].[Accessories]
(
	[AccessoryId] NVARCHAR(6) PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL, -- Амулеты, кольца, обручи
	[Spell] NVARCHAR(50),
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)
