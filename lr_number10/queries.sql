USE [db_lr_10];
GO

/*
Х	
Х	—оздать представление (VIEW) со списком наиболее продаваемых блюд.
*/
--  ¬ывести список заказов с именами клиентов и названи€ми блюд с использованием INNER JOIN.
SELECT [M].[DishTitle], 
	CONCAT([C].[LastName], ' ', [C].[FirstName]) AS [ClientName], 
	[O].[OrderDate] FROM [Orders] AS [O]
INNER JOIN [Clients] AS [C] ON [O].[ClientId] = [C].[Id]
INNER JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id];

--  ѕодсчитать общую сумму заказов за день с использованием агрегатных функций (SUM).
SELECT CAST([O].[OrderDate] AS DATE) AS [OrderDay], SUM([P].[Amount]) AS [TotalAmountOfOrders] FROM [Payments] AS [P]
INNER JOIN [Orders] AS [O] ON [P].[OrderId] = [O].[Id]
GROUP BY CAST([O].[OrderDate] AS DATE)
ORDER BY [OrderDay];

--  ¬ыполнить выборку по самым попул€рным блюдам с использованием GROUP BY и COUNT.
SELECT TOP 5 [M].[DishTitle], COUNT([O].[ClientId]) AS [PopularDishes] FROM [Orders] AS [O]
INNER JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id]
GROUP BY [M].[DishTitle]
ORDER BY [PopularDishes] DESC;

--  ѕолучить список блюд, которые были заказаны менее 3 раз (HAVING).
SELECT [M].[DishTitle] FROM [Orders] AS [O]
INNER JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id]
GROUP BY [M].[DishTitle]
HAVING COUNT([O].[ClientId]) < 3;

--  ¬ыполнить подзапрос дл€ получени€ средней цены блюд в категории "десерты".
SELECT AVG([Price]) AS [Average] FROM [Menu]
WHERE [Category] = (SELECT [Id] FROM [DishCategories] 
					WHERE [Title] = 'ƒесерты');

--  ¬ывести список клиентов, которые сделали заказы на сумму выше средней стоимости заказа.
SELECT CONCAT([C].[LastName], ' ', [C].[FirstName]) AS [ClientName] FROM [Clients] AS [C]
INNER JOIN [Orders] AS [O] ON [O].[ClientId] = [C].[Id]
INNER JOIN [Payments] AS [P] ON [P].[OrderId] = [O].[Id]
GROUP BY CONCAT([C].[LastName], ' ', [C].[FirstName])
HAVING SUM([P].[Amount]) > (SELECT(AVG([Amount])) FROM [Payments]);

--  ¬ыполнить сортировку по общей сумме заказа в пор€дке убывани€ (ORDER BY).
SELECT * FROM [Orders]
INNER JOIN [Payments] ON [Payments].[OrderId] = [Orders].[Id]
ORDER BY [Payments].[Amount] DESC;

CREATE VIEW 

