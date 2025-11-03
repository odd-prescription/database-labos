-- ТЕма: Библиотека
USE [db_lr_12];
GO

CREATE TABLE [Visitors] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] NVARCHAR(100) NOT NULL,
	[FirstName] NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL,
	[PhoneNumber] NVARCHAR(40) NOT NULL UNIQUE,
	[Email] NVARCHAR(60) UNIQUE,
	[Birthday] DATE NOT NULL
);
CREATE TABLE [Authors] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] NVARCHAR(100) NOT NULL,
	[FirstName] NVARCHAR(100) NOT NULL,
	[MiddleName] NVARCHAR(100),
	[Birthday] DATE,
	[Country] NVARCHAR(100)
);
CREATE TABLE [Genres] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Title] NVARCHAR(50)
);
CREATE TABLE [PublishingCompanies] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL,
	[PhoneNumber] NVARCHAR(40) NOT NULL UNIQUE,
);
CREATE TABLE [Books] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(200),
	[AuthorId] INT NOT NULL,
	[GenreId] INT NOT NULL,
	[PublishingCompanyId] INT NOT NULL,
	[ReleaseDate] DATE DEFAULT GETDATE(),
	FOREIGN KEY ([AuthorId]) REFERENCES [Authors]([Id]),
	FOREIGN KEY ([GenreId]) REFERENCES [Genres]([Id]),
	FOREIGN KEY ([PublishingCompanyId]) REFERENCES [PublishingCompanies]([Id]),
);
CREATE TABLE [BookIssuances] (
	[Id] INT IDENTITY PRIMARY KEY,
	[VisitorId] INT NOT NULL,
	[BookId] INT NOT NULL,
	[Since] DATETIME NOT NULL,
	[Until] DATETIME NOT NULL,
	[Status] BIT DEFAULT 0,
	FOREIGN KEY ([VisitorId]) REFERENCES [Visitors]([Id]),
	FOREIGN KEY ([BookId]) REFERENCES [Books]([Id]),
);
CREATE TABLE [Penalties] (
	[Id] INT IDENTITY PRIMARY KEY,
	[IssuanceId] INT NOT NULL,
	[Amount] MONEY NOT NULL CHECK([Amount] > 0),
	[AccrualDate] DATETIME NOT NULL,
	[Status] BIT DEFAULT 0,
	FOREIGN KEY ([IssuanceId]) REFERENCES [BookIssuances]([Id]),
);