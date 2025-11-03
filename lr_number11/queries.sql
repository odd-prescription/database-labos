USE [db_lr_11];
GO
/*
•	Использовать оператор UNION для объединения данных из нескольких таблиц.
•	Применить оператор INTERSECT для поиска общих данных в таблицах.
•	Использовать оператор EXCEPT для нахождения уникальных данных в одной из таблиц.
•	Выполнить запрос с использованием UNION ALL для объединения данных с учетом дубликатов.

	Выполнить дополнительные выборки с использованием вложенных запросов, агрегатных функций и группировки данных.
*/
SELECT [LastName] AS [Humans] FROM [Clients]
UNION SELECT [LastName] AS [Humans] FROM [Employees];

SELECT [LastName] AS [Namesakes] FROM [Clients]
INTERSECT SELECT [LastName] FROM [Employees];

-- 26 всего
SELECT [LastName] AS [UniqueLastNames] FROM [Clients] 
EXCEPT SELECT [LastName] FROM [Employees];

SELECT [LastName] AS [TotalHumans] FROM [Clients]
UNION ALL SELECT [LastName] AS [Humans] FROM [Employees];

SELECT AVG([Price]) AS [AverageAlcohol] FROM [Menu]
WHERE [Category] = (SELECT [Id] FROM [DishCategories] 
					WHERE [Title] = 'Алкоголь');

SELECT CONCAT([C].[LastName], ' ', [C].[FirstName]) AS [ClientsAboveAverage] FROM [Clients] AS [C]
INNER JOIN [Orders] AS [O] ON [O].[ClientId] = [C].[Id]
INNER JOIN [Payments] AS [P] ON [P].[OrderId] = [O].[Id]
GROUP BY CONCAT([C].[LastName], ' ', [C].[FirstName])
HAVING SUM([P].[Amount]) < (SELECT(AVG([Amount])) FROM [Payments]);