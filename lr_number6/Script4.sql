SELECT [Grade], COUNT(*) AS [NumberOfStudents]
	FROM [dbo].[Grades]
	GROUP BY [Grade];
