/* 
	База данных онлайн-курсов.
	Таблицы: Курсы, 
			Преподаватели, 
			Студенты, 
			Уроки, 
			Домашние задания, 
			Сертификаты, 
			Отзывы, 
			Материалы
*/
CREATE DATABASE [db_lr_4];

CREATE TABLE [dbo].[Students] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Email] VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(16) NOT NULL CHECK(Password >= 8),
	[Birthday] DATETIME CHECK(EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM Birthday) >= 14), 
								-- типо студенту д.б больше 14 лет
);

CREATE TABLE [dbo].[Teachers] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Experience] INT CHECK(Experience > 0),
	[Email] VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(16) NOT NULL CHECK(Password >= 8),
	[Birthday] DATETIME CHECK(EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM Birthday) >= 18),
		
);

CREATE TABLE [dbo].[Courses] (
	[Id] INT PRIMARY KEY,
	[Description] NVARCHAR(400),
	[Price] MONEY CHECK(Price >= 0),
	[DurationInHours] INT CHECK(DurationInHours > 0),
	[Student] INT NOT NULL,
	[Teacher] INT NOT NULL, 
	FOREIGN KEY (Student) REFERENCES Students(Id),
	FOREIGN KEY (Teacher) REFERENCES Teachers(Id)
);

CREATE TABLE [dbo].[Lessons] (
	[Id] INT PRIMARY KEY,
	[Course] INT NOT NULL,
	[Content] NVARCHAR(1000),
	[VideoURL] NVARCHAR(255),
	FOREIGN KEY (Course) REFERENCES Courses(Id),
);

CREATE TABLE [dbo].[Homeworks] (
	[Id] INT PRIMARY KEY,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(1000),
	[DueDate] DATETIME,
	[Score] INT CHECK (Score >= 0),
	FOREIGN KEY (Teacher) REFERENCES Teachers(Id),
	FOREIGN KEY (Lesson) REFERENCES Lessons(Id)
);

CREATE TABLE [dbo].[Certificates] (
	[Id] INT IDENTITY PRIMARY KEY,
	[UniqueCode] INT UNIQUE NOT NULL,
	[Course] INT NOT NULL,
	[Student] INT NOT NULL,
	[Description] NVARCHAR(100) NOT NULL,
	[IssueDate] DATETIME NOT NULL
);

CREATE TABLE [dbo].[Reviews] (
	[Id] INT PRIMARY KEY,
	[Stars] INT NOT NULL CHECK (Stars <= 5 AND Stars > 0),
	[Student] INT NOT NULL,
	[Description] NVARCHAR(200),
	[Course] INT NOT NULL,
	[CreatedAt] DATETIME NOT NULL,
	FOREIGN KEY (Student) REFERENCES Students(Id),
	FOREIGN KEY (Course) REFERENCES Courses(Id)
);

CREATE TABLE [dbo].[Materials] (
	[Id] INT PRIMARY KEY,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(255),
	[URL] NVARCHAR(255) NOT NULL,
	FOREIGN KEY (Lesson) REFERENCES Lessons(Id)
);
