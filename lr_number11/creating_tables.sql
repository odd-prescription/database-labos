USE [db_lr_11];
GO

CREATE TABLE [Clients] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[LastName]	NVARCHAR(100) NOT NULL,
	[FirstName]	NVARCHAR(100) NOT NULL,
	[Phone]		NVARCHAR(50) NOT NULL,
	[Email]		NVARCHAR(30) NOT NULL,
	[Address]	NVARCHAR(100),
	[MessengerTag] NVARCHAR(30),
);
CREATE TABLE [EmployeesPositions] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[Title]		NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(100) NOT NULL
);
CREATE TABLE [Employees] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[LastName]	NVARCHAR(100) NOT NULL,
	[FirstName]	NVARCHAR(100) NOT NULL,
	[PositionId] INT NOT NULL,
	FOREIGN KEY ([PositionId]) REFERENCES [EmployeesPositions]([Id]),
);
CREATE TABLE [EmployeesSalary] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[EmployeeId] INT NOT NULL,
	[Salary]	MONEY NOT NULL,
	[Bonus]		MONEY DEFAULT 0,
	FOREIGN KEY ([EmployeeId]) REFERENCES [Employees]([Id]),
);
CREATE TABLE [DishCategories] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[Title]		NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(100) NOT NULL
);
CREATE TABLE [Menu] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[DishTitle] NVARCHAR(100) NOT NULL,
	[Price]		MONEY CHECK ([Price] > 0),
	[Category]	INT NOT NULL,
	FOREIGN KEY ([Category]) REFERENCES [DishCategories]([Id])
);
CREATE TABLE [Orders] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[ClientId]	INT NOT NULL,
	[DishId]	INT NOT NULL,
	[OrderDate] DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY ([ClientId]) REFERENCES [Clients]([Id]),
	FOREIGN KEY ([DishId])  REFERENCES [Menu]([Id])
);
CREATE TABLE [PaymentTypes] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[Title]		NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(100) NOT NULL
);
CREATE TABLE [Payments] (
	[Id]		INT IDENTITY PRIMARY KEY,
	[OrderId]	INT NOT NULL REFERENCES [Orders]([Id]),
	[PaymentType] INT NOT NULL,
	[Amount]	MONEY NOT NULL,
	FOREIGN KEY ([PaymentType]) REFERENCES [PaymentTypes]([Id])
);
