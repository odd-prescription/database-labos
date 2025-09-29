-- Id столика, ресторан, забронирован или нет, какой официант обслуживает
CREATE TABLE [dbo].[Tables]
(
	[TableId] INT NOT NULL PRIMARY KEY,
	[Restaurant] INT NOT NULL,
	[TableNumber] INT NOT NULL,
	[Occupation] BIT NOT NULL DEFAULT 0,
	[Waiter] INT NOT NULL,
	FOREIGN KEY ([Restaurant]) REFERENCES [Restaurants](RestaurantId),
	FOREIGN KEY ([Waiter]) REFERENCES [Waiters](WaiterId)
)
