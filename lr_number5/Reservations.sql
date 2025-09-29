-- ID, ресторан, столик, клиент, на сколько, оплачено или нет, 
CREATE TABLE [dbo].[Reservations]
(
	[ReservationId] INT IDENTITY NOT NULL PRIMARY KEY,
	[Restaurant] INT NOT NULL,
	[Table] INT NOT NULL,
	[Client] INT NOT NULL,
	[ReservationDate] DATETIME2 NOT NULL,
	[QuantityOfClients] INT NOT NULL,
	FOREIGN KEY ([Restaurant]) REFERENCES [Restaurants](RestaurantId),
	FOREIGN KEY ([Table]) REFERENCES [Tables](TableId),
	FOREIGN KEY ([Client])  REFERENCES [Clients](ClientId)
)
