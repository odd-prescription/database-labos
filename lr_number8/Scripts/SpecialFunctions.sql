/*  Преобразования CAST CONVERT
	Математические функции
	Строковые функции  */
USE db_lr_8;
GO

SELECT CAST([Id] AS DECIMAL(2)) AS [CastedId],
	[CreatedAt],
	CONVERT(NVARCHAR(20), [CreatedAt], 103) AS [ConvertedDate]
	FROM [Reviews]; -- 103 - dd/mm/yyyy

SELECT [Title],
	[Price],
	POWER([Price], 3) AS [PoweredCoursePrice],
	ROUND([Price], 1) AS [RoundedCoursePrice],
	RAND() AS [JustRandomNumber],
	[DurationInHours],
	SQRT([DurationInHours]) AS [SquaredDuration],
	ABS([DurationInHours]) AS [AbsoluteDuration]
	FROM [Courses];

SELECT CONCAT([LastName], ' ' ,[FirstName], ' ', [Patronymic]) AS [FullName],
	LEN(CONCAT([LastName], ' ' ,[FirstName], ' ', [Patronymic])) AS [FullNameLength],
	LEFT([Biography], 10) AS [BioLeftPart]
	FROM [Students];