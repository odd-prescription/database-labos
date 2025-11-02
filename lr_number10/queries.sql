USE [db_lr_10];
GO

--  Вывести список заказов с именами клиентов и названиями блюд с использованием INNER JOIN.
SELECT [M].[DishTitle], 
	CONCAT([C].[LastName], ' ', [C].[FirstName]) AS [ClientName], 
	[O].[OrderDate] FROM [Orders] AS [O]
INNER JOIN [Clients] AS [C] ON [O].[ClientId] = [C].[Id]
INNER JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id];

--  Подсчитать общую сумму заказов за день с использованием агрегатных функций (SUM).
SELECT CAST([O].[OrderDate] AS DATE) AS [OrderDay], SUM([P].[Amount]) AS [TotalAmountOfOrders] FROM [Payments] AS [P]
INNER JOIN [Orders] AS [O] ON [P].[OrderId] = [O].[Id]
GROUP BY CAST([O].[OrderDate] AS DATE)
ORDER BY [OrderDay];

--  Выполнить выборку по самым популярным блюдам с использованием GROUP BY и COUNT.
SELECT TOP 5 [M].[DishTitle], COUNT([O].[ClientId]) AS [PopularDishes] FROM [Orders] AS [O]
RIGHT JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id]
GROUP BY [M].[DishTitle]
ORDER BY [PopularDishes] DESC;

--  Получить список блюд, которые были заказаны менее 3 раз (HAVING).
SELECT [M].[DishTitle] FROM [Orders] AS [O]
LEFT JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id]
GROUP BY [M].[DishTitle]
HAVING COUNT([O].[ClientId]) < 3;

--  Выполнить подзапрос для получения средней цены блюд в категории "десерты".
SELECT AVG([Price]) AS [Average] FROM [Menu]
WHERE [Category] = (SELECT [Id] FROM [DishCategories] 
					WHERE [Title] = 'Десерты');

--  Вывести список клиентов, которые сделали заказы на сумму выше средней стоимости заказа.
SELECT CONCAT([C].[LastName], ' ', [C].[FirstName]) AS [ClientName] FROM [Clients] AS [C]
INNER JOIN [Orders] AS [O] ON [O].[ClientId] = [C].[Id]
INNER JOIN [Payments] AS [P] ON [P].[OrderId] = [O].[Id]
GROUP BY CONCAT([C].[LastName], ' ', [C].[FirstName])
HAVING SUM([P].[Amount]) > (SELECT(AVG([Amount])) FROM [Payments]);

--  Выполнить сортировку по общей сумме заказа в порядке убывания (ORDER BY).
SELECT * FROM [Orders]
FULL JOIN [Payments] ON [Payments].[OrderId] = [Orders].[Id]
ORDER BY [Payments].[Amount] DESC;
