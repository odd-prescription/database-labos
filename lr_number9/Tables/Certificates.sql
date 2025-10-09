CREATE TABLE [dbo].[Certificates] (
	[Id] INT IDENTITY PRIMARY KEY,
	[UniqueCode] NVARCHAR(50) UNIQUE NOT NULL,
	[Course] INT NOT NULL,
	[Student] INT NOT NULL,
	[Description] NVARCHAR(400) NOT NULL,
	[IssueDate] DATETIME NOT NULL,
	FOREIGN KEY (Course) REFERENCES Courses(Id),
	FOREIGN KEY (Student) REFERENCES Students(Id)
);