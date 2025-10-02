CREATE TABLE [dbo].[Clothes]
(
	[ClothId] NVARCHAR(6) PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL, -- На голову, на тело, на руки, на ноги
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)
