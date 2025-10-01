/*
    Скрипт базы данных
*/

-- Таблица факультетов
CREATE TABLE [Faculties] (
    [Id] NVARCHAR(5) PRIMARY KEY,
    [Name] NVARCHAR(100)
);

-- Таблица студентов
CREATE TABLE [Students] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    [Age] INT,
    [FacultyId] NVARCHAR(5) NOT NULL,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties]([Id])
);

-- Таблица курсов
CREATE TABLE [Courses] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    [FacultyId] NVARCHAR(5) NOT NULL,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties]([Id])
);

-- Таблица преподавателей
CREATE TABLE [Teachers] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(100)
);

-- Таблица групп
CREATE TABLE [Groups] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL,
    [FacultyId] NVARCHAR(5) NOT NULL,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties]([Id])
);

-- Таблица оценок
CREATE TABLE [Grades] (
    [Id] INT IDENTITY PRIMARY KEY,
    [StudentId] INT NOT NULL,
    [CourseId] INT NOT NULL,
    [Grade] INT,
    FOREIGN KEY ([StudentId]) REFERENCES [Students]([Id]),
    FOREIGN KEY ([CourseId]) REFERENCES [Courses]([Id]),
);

