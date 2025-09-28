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
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Teachers] (
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Courses] (
	Id INT PRIMARY KEY,

);
CREATE TABLE [dbo].[Lessons] (
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Homeworks] (
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Certificates] (
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Reviews] (
	Id INT PRIMARY KEY,

);

CREATE TABLE [dbo].[Materials] (
	Id INT PRIMARY KEY,

);
