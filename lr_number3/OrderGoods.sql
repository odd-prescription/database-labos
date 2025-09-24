-- Промежуточная таблица для создания связи между Orders и Goods

CREATE TABLE [dbo].[OrderGoods]
(
	[OrderId] INT NOT NULL,
	[GoodId] INT NOT NULL,
	PRIMARY KEY(OrderId, GoodId), -- Составной ПК
	FOREIGN KEY (OrderId) REFERENCES Orders(Id),
	FOREIGN KEY (GoodId) REFERENCES Goods(Id)
)
