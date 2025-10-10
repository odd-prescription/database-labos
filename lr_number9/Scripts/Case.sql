USE db_lr_9;
GO
-- CASE
SELECT [Cour].[Title],
	[Revw].[Description],
	CASE [Revw].[Stars]
		WHEN 5 THEN 'Классно'
		WHEN 4 THEN 'Почти классно'
		WHEN 3 THEN 'Нормально'
		WHEN 2 THEN 'Плоховато'
		WHEN 1 THEN 'Ужасно. kys'
		ELSE 'Ошибка'
	END AS [Stars]
FROM [Reviews] AS [Revw]
INNER JOIN [Courses] AS [Cour]
	ON [Cour].[Id] = [Revw].[Course]

	

	