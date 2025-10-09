CREATE TABLE [dbo].[Students] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] NVARCHAR(50) NOT NULL,
	[FirstName] NVARCHAR(50) NOT NULL,
	[Patronymic] NVARCHAR(50),
	[Biography] NVARCHAR(200),
	[Email] VARCHAR(100) NOT NULL UNIQUE,
	[Password] VARCHAR(256) NOT NULL,
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) >= 14), 
								-- типо студенту д.б больше 14 лет
);