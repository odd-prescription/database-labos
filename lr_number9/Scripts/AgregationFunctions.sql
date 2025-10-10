USE db_lr_9;
GO

-- SUM, AVG, COUNT, MAX, MIN
SELECT [Courses].[Title], AVG([Stars]) AS [AverageRating] FROM [Reviews]
INNER JOIN [Courses] ON [Courses].[Id] = [Reviews].[Course]
GROUP BY [Courses].[Title]
HAVING AVG([Stars]) >= 4;

SELECT SUM([DurationInHours]) AS [TotalCoursesHours] FROM [Courses]
WHERE [Price] >= 16000
GROUP BY [Teacher]
HAVING AVG([DurationInHours]) > 20;

SELECT TOP 4 COUNT(*) AS [TotalHomeworks] FROM [Homeworks]
GROUP BY [Student];

SELECT [LastName], [FirstName], MAX([Experience]) AS [MaxExperienceInYears] FROM [Teachers]
GROUP BY [LastName], [FirstName]
ORDER BY [MaxExperienceInYears] DESC;

SELECT CONCAT([LastName], ' ',[FirstName]) AS [StudentFullName], 
	CONVERT(VARCHAR(10), [Birthday], 103) AS [Birthday], 
	MIN(DATEDIFF(YEAR, [Birthday], GETDATE())) AS [Age] 
	FROM [Students]
GROUP BY CONCAT([LastName], ' ',[FirstName]), CONVERT(VARCHAR(10), [Birthday], 103)

GO