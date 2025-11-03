USE [db_lr_11];
GO
/*
Х	»спользовать оператор UNION дл€ объединени€ данных из нескольких таблиц.
Х	ѕрименить оператор INTERSECT дл€ поиска общих данных в таблицах.
Х	»спользовать оператор EXCEPT дл€ нахождени€ уникальных данных в одной из таблиц.
Х	¬ыполнить запрос с использованием UNION ALL дл€ объединени€ данных с учетом дубликатов.

	¬ыполнить дополнительные выборки с использованием вложенных запросов, агрегатных функций и группировки данных.
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

