CREATE TABLE [dbo].[Students] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Email] VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(16) NOT NULL CHECK(LEN(Password) >= 8),
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) - YEAR(Birthday) >= 14), 
								-- типо студенту д.б больше 14 лет
);