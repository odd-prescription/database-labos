CREATE TABLE [dbo].[Goods]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(60) NOT NULL,
	[Description] NVARCHAR(200),
	[Price] MONEY NOT NULL CHECK (Price > 0),
	[Quantity] INT NOT NULL CHECK (Quantity > 0),
	[CategoryId] INT NOT NULL,
	FOREIGN KEY (CategoryId) REFERENCES GoodsCategories(Id)
)
