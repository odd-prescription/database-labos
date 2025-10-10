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
--CREATE DATABASE [db_lr_4];
USE db_lr_4;
GO

/*DELETE FROM [Certificates];
DELETE FROM Homeworks;
DELETE FROM Lessons;
DELETE FROM Materials;
DELETE FROM Reviews;
DELETE FROM Courses;
DELETE FROM Students;
DELETE FROM Teachers;
DROP TABLE [Certificates];
DROP TABLE Homeworks;
DROP TABLE Lessons;
DROP TABLE Materials;
DROP TABLE Reviews;
DROP TABLE Courses;
DROP TABLE Students;
DROP TABLE Teachers;

DBCC CHECKIDENT('Certificates', RESEED, 0);
DBCC CHECKIDENT('Homeworks', RESEED, 0);
DBCC CHECKIDENT('Lessons', RESEED, 0);
DBCC CHECKIDENT('Materials', RESEED, 0);
DBCC CHECKIDENT('Reviews', RESEED, 0);
DBCC CHECKIDENT('Courses', RESEED, 0);
DBCC CHECKIDENT('Students', RESEED, 0);
DBCC CHECKIDENT('Teachers', RESEED, 0);*/

CREATE TABLE [dbo].[Students] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Email] VARCHAR(50) NOT NULL UNIQUE,
	[Password] VARCHAR(256) NOT NULL CHECK(LEN(Password) >= 256),
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) >= 14), 
								-- типо студенту д.б больше 14 лет
);
GO

CREATE TABLE [dbo].[Teachers] (
	[Id] INT IDENTITY PRIMARY KEY,
	[LastName] VARCHAR(30) NOT NULL,
	[FirstName] VARCHAR(30) NOT NULL,
	[Patronymic] VARCHAR(30),
	[Biography] NVARCHAR(200),
	[Experience] INT CHECK(Experience > 0),
	[Email] VARCHAR(50) NOT NULL UNIQUE,
	[Password] VARCHAR(256) NOT NULL CHECK(LEN(Password) >= 256),
	[Birthday] DATETIME CHECK(DATEDIFF(YEAR, Birthday, GETDATE()) >= 18),
);
GO

CREATE TABLE [dbo].[Courses] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Title] NVARCHAR(255) NOT NULL UNIQUE,
	[Description] NVARCHAR(400),
	[Price] MONEY CHECK(Price >= 0),
	[DurationInHours] INT CHECK([DurationInHours] > 0),
	[Teacher] INT NOT NULL, 
	FOREIGN KEY (Teacher) REFERENCES Teachers(Id)
);
GO

CREATE TABLE [dbo].[Lessons] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Course] INT NOT NULL,
	[Content] NVARCHAR(1000),
	[VideoURL] NVARCHAR(255),
	FOREIGN KEY (Course) REFERENCES Courses(Id),
);
GO

CREATE TABLE [dbo].[Homeworks] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(1000),
	[DueDate] DATETIME,
	[MaxScore] INT CHECK (MaxScore >= 0),
	FOREIGN KEY (Lesson) REFERENCES Lessons(Id)
);
GO

CREATE TABLE [dbo].[Certificates] (
	[Id] INT IDENTITY PRIMARY KEY,
	[UniqueCode] INT UNIQUE NOT NULL,
	[Course] INT NOT NULL,
	[Student] INT NOT NULL,
	[Description] NVARCHAR(100) NOT NULL,
	[IssueDate] DATETIME NOT NULL,
	FOREIGN KEY (Course) REFERENCES Courses(Id),
	FOREIGN KEY (Student) REFERENCES Students(Id)
);
GO

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
GO

CREATE TABLE [dbo].[Materials] (
	[Id] INT IDENTITY PRIMARY KEY,
	[Lesson] INT NOT NULL,
	[Description] NVARCHAR(255),
	[URL] NVARCHAR(255) NOT NULL,
	FOREIGN KEY (Lesson) REFERENCES Lessons(Id)
);
GO

INSERT INTO [dbo].[Students] (
	[LastName],
	[FirstName],
	[Patronymic],
	[Biography],
	[Email],
	[Password],
	[Birthday]
) VALUES (
	'Фельков',
	'Гойда',
	'Патронович',
	'Родился в городе Донецк',
	'goyda2014@yandex.ru',
	'SHA-256-hash-code-1',
	'01/01/2006'),
	(
	'Дмитриев',
	'Антон',
	'Добросалович',
	'',
	'genshinismylive@mail.ru',
	'SHA-256-hash-code-2',
	'24/03/2001'
	)
GO

INSERT INTO [dbo].[Teachers] (
	[LastName],
	[FirstName],
	[Patronymic],
	[Biography],
	[Experience],
	[Email],
	[Password],
	[Birthday]
) VALUES (
	'Назарбаев',
	'Асымжарты',
	'Чумчури-оглы-Ахмет',
	'Профессианальный повар с 13-летним стажем',
	'12',
	'asamgartjy@gmail.com',
	'SHA-256-hash-code-3',
	'19/04/1994'
)
GO

INSERT INTO [dbo].[Courses] (
	[Title],
	[Description],
	[Price],
	[DurationInHours] ,
	[Teacher]
) VALUES (
	'Обучение началам французской кухни',
	'Вместе приготовим крем-брюле, лягушачьи ножки и луковый суп',
	'1999.99',
	'12',
	'1'
)
GO

INSERT INTO [dbo].[Lessons] (
	[Course],
	[Content],
	[VideoURL]
) VALUES (
	'1',
	'содержание',
	'https://www.youtube.com/watch?v=WePNs-G7puA'
)
GO

INSERT INTO [dbo].[Homeworks] (
	[Lesson],
	[Description],
	[DueDate],
	[MaxScore]
) VALUES (
	'1',
	'Приготовьте крем-брюле по методикам, описанным в уроке',
	'09/09/2025',
	'2'
)
GO

INSERT INTO [dbo].[Certificates] (
	[UniqueCode],
	[Course],
	[Student],
	[Description],
	[IssueDate]
) VALUES (
	'1337437',
	'1',
	'1',
	'Хорошо поработал',
	'20/10/2099'
)
GO

INSERT INTO [dbo].[Reviews] (
	[Stars],
	[Student],
	[Description],
	[Course],
	[CreatedAt]
) VALUES (
	'5',
	'1',
	'Мне понравилось, курс отлчается от других тем, что он единственный в своём роде',
	'1',
	'21/10/2025'
)
GO

INSERT INTO [dbo].[Materials] (
	[Lesson],
	[Description],
	[URL]
) VALUES (
	'1',
	'',
	'https://www.youtube.com/watch?v=jVFvXKDKCZg&pp=0gcJCfYJAYcqIYzv'
)
GO
*/