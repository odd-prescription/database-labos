CREATE TABLE [dbo].[Teachers] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Experience] INT CHECK(Experience > 0),
	[Email] VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(16) NOT NULL CHECK(LEN(Password) >= 8),
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) - YEAR(Birthday) >= 18),
);