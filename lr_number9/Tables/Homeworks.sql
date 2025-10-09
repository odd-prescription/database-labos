CREATE TABLE [dbo].[Homeworks] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Student] INT NOT NULL,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(1000),
	[DueDate] DATETIME,
	[MaxScore] INT CHECK (MaxScore >= 0),
	FOREIGN KEY ([Student]) REFERENCES [Students]([Id]),
	FOREIGN KEY ([Lesson]) REFERENCES [Lessons]([Id])
		
);