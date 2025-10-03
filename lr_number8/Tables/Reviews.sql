CREATE TABLE [dbo].[Reviews] (
	[Id] INT IDENTITY  PRIMARY KEY,
	[Stars] INT NOT NULL CHECK (Stars <= 5 AND Stars > 0),
	[Student] INT NOT NULL,
	[Description] NVARCHAR(200),
	[Course] INT NOT NULL,
	[CreatedAt] DATETIME NOT NULL DEFAULT GETDATE()
	FOREIGN KEY (Student) REFERENCES Students(Id),
	FOREIGN KEY (Course) REFERENCES Courses(Id)
);