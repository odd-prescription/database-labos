-- ID, название, адрес, рейтинг, количество столиков, меню
CREATE TABLE [dbo].[Restaurants]
(
	[RestaurantId] INT IDENTITY NOT NULL PRIMARY KEY,
	[Name] NVARCHAR(40) NOT NULL,
	[Address] NVARCHAR(50),
	[PhoneNumber] NVARCHAR(20) NOT NULL,
	[Capacity] INT CHECK([Capacity] > 0),

)
