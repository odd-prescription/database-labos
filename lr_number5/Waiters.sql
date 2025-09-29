CREATE TABLE [dbo].[Waiters]
(
	[WaiterId] INT IDENTITY NOT NULL PRIMARY KEY,
	[LastName] NVARCHAR(30) NOT NULL,
	[FirstName] NVARCHAR(30) NOT NULL,
	[PhoneNumber] NVARCHAR(20) NOT NULL,
	[Restaurant] INT NOT NULL,
	[Shift] NVARCHAR(10) NOT NULL,
	FOREIGN KEY ([Restaurant]) REFERENCES [Restaurants]([RestaurantId])
)
