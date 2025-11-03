USE [db_lr_12];
GO
/*
•	Использовать агрегатные функции SUM, AVG, COUNT, MAX, MIN для выполнения расчетов по данным.
•	Применить группировку данных с использованием GROUP BY.
•	Применить фильтрацию данных с использованием HAVING для работы с агрегированными результатами.
•	Составить отчет по общему количеству продаж, средней стоимости товаров и минимальной/максимальной цене.
•	Вывести ТОП-10 товаров по количеству продаж.

1.	Подсчитать общую сумму продаж/доходов/оплаты за определенный период.
2.	Посчитать среднюю стоимость товара/услуги/билета/книги.
3.	Определить количество клиентов, заказов или бронирований, выполненных за месяц.
4.	Найти самые дорогие/дешевые товары, услуги или билеты.
*/

SELECT [Amount] AS [PenaltyAmountInWinter] FROM [Penalties]
WHERE [AccrualDate] >= DATEFROMPARTS(YEAR(GETDATE()), 1, 1)
	AND [AccrualDate] < DATEFROMPARTS(YEAR(GETDATE()), 2, 1)

SELECT [Books].[Title] AS [Book], AVG([Amount]) AS [AveragePenalty] FROM [Penalties]
INNER JOIN [BookIssuances] ON [Penalties].[IssuanceId] = [BookIssuances].[Id]
INNER JOIN [Books] ON [BookIssuances].[BookId] = [Books].[Id]
GROUP BY [Books].[Title];

SELECT DATENAME(MONTH, [Since]) AS [Month], COUNT([VisitorId]) AS [TotalVisitorsPerMonth] FROM [BookIssuances]
GROUP BY DATENAME(MONTH, [Since])
HAVING DATENAME(MONTH, [Since]) = 'Январь';

SELECT COUNT(*) AS [TotalPenalties], AVG([Amount]) AS [AveragePenalty], MIN([Amount]) AS [MinimumPenalty], MAX([Amount]) AS [MaximumPenalty] FROM [Penalties];

SELECT TOP 10 [Books].[Title], [Authors].[FirstName], [Authors].[LastName], [BookIssuances].[Since] FROM [Authors]
INNER JOIN [Books] ON [Books].[AuthorId] = [Authors].[Id]
INNER JOIN [BookIssuances] ON [BookIssuances].[BookId] = [Books].[Id]
ORDER BY [BookIssuances].[Status] DESC;