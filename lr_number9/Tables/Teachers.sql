CREATE TABLE [dbo].[Teachers] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] NVARCHAR(50) NOT NULL,
	[FirstName] NVARCHAR(50) NOT NULL,
	[Patronymic] NVARCHAR(50),
	[Biography] NVARCHAR(200),
	[Experience] INT CHECK(Experience > 0),
	[Email] VARCHAR(100) NOT NULL UNIQUE,
	[Password] VARCHAR(256) NOT NULL,
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) >= 18),
);