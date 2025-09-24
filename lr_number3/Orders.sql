CREATE TABLE [dbo].[Orders]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[UserId] INT NOT NULL, 
	[OrderDate] DATETIME, 
	[StatusId] INT NOT NULL,
	[UserAddress] INT NOT NULL,
	[PaymentMethod] NVARCHAR(10),
	FOREIGN KEY (UserId) REFERENCES Users(Id),
	FOREIGN KEY (StatusId) REFERENCES OrderStatuses(Id),
	FOREIGN KEY (UserAddress) REFERENCES UserAddresses(Id)
)
