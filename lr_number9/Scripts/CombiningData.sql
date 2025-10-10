USE db_lr_9;
GO
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

SELECT [Stud].[LastName], [Stud].[FirstName], [Hmwk].[Lesson], [Hmwk].[Description], [Hmwk].[DueDate], [Hmwk].[MaxScore] 
	FROM [Homeworks] AS [Hmwk]
INNER JOIN [Students] AS [Stud]
	ON [Hmwk].[Student] = [Stud].[Id];

SELECT [Cour].[Title], [Cour].[DurationInHours], [Revw].[Stars] FROM [Courses] AS [Cour]
LEFT JOIN [Reviews] AS [Revw]
	ON [Cour].[Id] = [Revw].[Course];

SELECT [Cour].[Title], [Matrl].[URL] FROM [Materials] AS [Matrl]
RIGHT JOIN [Lessons] AS [Lssn] 
	ON [Matrl].[Lesson] = [Lssn].[Id]
RIGHT JOIN [Courses] AS [Cour] 
	ON [Lssn].[Course] = [Cour].[Id];

SELECT [Cour].[Title], [Cour].[Description], CONCAT([Teach].[LastName], ' ', [Teach].[FirstName]) AS [Teacher], [Cour].[DurationInHours], [Cour].[Price] 
	FROM [Teachers] AS [Teach]
FULL JOIN [Courses] AS [Cour]
	ON [Cour].[Teacher] = [Teach].[Id]

GO
