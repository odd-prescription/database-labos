-- GROUP BY & HAVING
SELECT COUNT(*) AS [PlayerCount] FROM [dbo].[Inventory]
	GROUP BY [PlayerId]
	HAVING [PlayerId] = 'PLR001'