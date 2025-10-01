/*
    Скрипт базы данных
*/

-- Таблица факультетов
CREATE TABLE [Facuties] (
    [Id] VARCHAR(100) PRIMARY KEY,
    [Name] VARCHAR(100)
);

-- Таблица студентов
CREATE TABLE [Students] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] VARCHAR(100) NOT NULL,
    [Age] INT,
    [Grade] INT,
    [FacultyId] INT,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties]([Id])
);

-- Таблица курсов
CREATE TABLE [Courses] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] VARCHAR(100) NOT NULL,
    [FacultyId] INT,
    FOREIGN KEY ([FacultyId]) REFERENCES [Faculties]([Id]),
    FOREIGN KEY ([FacultyId]) REFERENCES [School]([Id])
);

-- Таблица преподавателей
CREATE TABLE [Teachers] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] INT
);

-- Таблица групп
CREATE TABLE [Groups] (
    [Id] INT IDENTITY PRIMARY KEY,
    [Name] VARCHAR(100) NOT NULL,
    [FacultyId] INT
);

-- Таблица оценок
CREATE TABLE [Grades] (
    [Id] INT IDENTITY PRIMARY KEY,
    [StudentId] INT,
    [CourseId] INT,
    [Grade] INT
);
