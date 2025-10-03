CREATE TABLE [dbo].[Courses] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Title] NVARCHAR(255) NOT NULL UNIQUE,
	[Description] NVARCHAR(400),
	[Price] MONEY CHECK(Price >= 0),
	[DurationInHours] INT CHECK([DurationInHours] > 0),
	[Teacher] INT NOT NULL, 
	FOREIGN KEY (Teacher) REFERENCES Teachers(Id)
);