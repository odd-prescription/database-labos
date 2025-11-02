--  Создать представление (VIEW) со списком наиболее продаваемых блюд.
CREATE VIEW [dbo].[BestSellingDishes]
	AS	SELECT TOP 5 [M].[DishTitle], COUNT([O].[ClientId]) AS [PopularDishes] FROM [Orders] AS [O]
		INNER JOIN [Menu] AS [M] ON [O].[DishId] = [M].[Id]
		GROUP BY [M].[DishTitle]
		ORDER BY [PopularDishes] DESC;
GO
SELECT * FROM [BestSellingDishes];