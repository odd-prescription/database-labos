
SELECT * FROM [dbo].[Items]
	WHERE [Price] > 400 AND [Weight] > 10.00
GO

SELECT * FROM [dbo].[Items] 
	WHERE [Price] < 1000;
GO

-- GROUP BY & HAVING
SELECT COUNT(*) AS [PlayerCount] FROM [dbo].[Inventory]
	GROUP BY [PlayerId]
	HAVING [PlayerId] = 'PLR001'
GO

SELECT TOP 4 * FROM [dbo].[Items]
	ORDER BY [Name] ASC
GO

-- LIKE & BETWEEN
SELECT * FROM [dbo].[Items]
	WHERE [Name] LIKE 'Желез%' OR ([Price] BETWEEN 100 AND 400);
GO
