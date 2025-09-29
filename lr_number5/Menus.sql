-- Id, ресторан, 
CREATE TABLE [dbo].[Menus]
(
	[MenuId] INT IDENTITY NOT NULL PRIMARY KEY,
	[Restaurant] INT NOT NULL,
	[DishName] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(200),
	[Price] MONEY NOT NULL CHECK ([Price] > 0),
	[Category] NVARCHAR(20) NOT NULL DEFAULT 'Прочее',
	FOREIGN KEY ([Restaurant]) REFERENCES [Restaurants](RestaurantId)
)
