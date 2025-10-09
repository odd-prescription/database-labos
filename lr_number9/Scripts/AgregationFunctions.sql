USE db_lr_8;
-- SUM, AVG, COUNT, MAX, MIN
SELECT [Course], AVG([Stars]) AS [AverageRating] FROM [Reviews]
	GROUP BY [Course];

SELECT SUM([DurationInHours]) AS [TotalCoursesHours] FROM [Courses]
	WHERE [Price] >= 16000;

SELECT TOP 4 COUNT(*) AS [TotalHomeworks] FROM [Homeworks];

SELECT [LastName], [FirstName], MAX([Experience]) AS [MaxExperienceInYears] FROM [Teachers]
	GROUP BY [LastName], [FirstName]
	ORDER BY [MaxExperienceInYears] DESC;