CREATE TABLE [dbo].[Homeworks] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(1000),
	[DueDate] DATETIME,
	[MaxScore] INT CHECK (MaxScore >= 0),
	FOREIGN KEY (Lesson) REFERENCES Lessons(Id)
);