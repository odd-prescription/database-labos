CREATE TABLE [dbo].[CoursesRegistrations]
(
	[Id] INT IDENTITY NOT NULL PRIMARY KEY,
	[Course] INT UNIQUE NOT NULL,
	[Student] INT UNIQUE NOT NULL,
	[RegistrationDate] DATETIME NOT NULL,
	FOREIGN KEY ([Course]) REFERENCES [Courses]([Id]),
	FOREIGN KEY ([Student]) REFERENCES [Students]([Id])
)
