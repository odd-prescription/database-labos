-- ID, название, адрес, рейтинг, количество столиков, меню
CREATE TABLE [dbo].[Restaurants]
(
	[RestaurantId] INT NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(40) NOT NULL,
	[Address] NVARCHAR(50),
	[PhoneNumber] NVARCHAR(10) NOT NULL,
	[Capacity] INT,
)
