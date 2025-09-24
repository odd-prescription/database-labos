CREATE TABLE [dbo].[Orders]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[UserId] INT NOT NULL, 
	[OrderDate] DATETIME, 
	[StatusId] INT NOT NULL,
	[UserAddress] NVARCHAR(50) NOT NULL,
	[TotalPrice] MONEY,
	[PaymentMethod] NVARCHAR(10),
	FOREIGN KEY (UserId) REFERENCES Users(Id),
	FOREIGN KEY (StatusId) REFERENCES OrderStatuses(Id),
	FOREIGN KEY (UserAddress) REFERENCES Users(Address),

)
