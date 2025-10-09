-- Подзапросы
USE db_lr_8;
GO
SELECT [LastName], [FirstName] FROM [Teachers]
WHERE [Id] = (
	SELECT TOP 1 [Teacher] FROM [Courses] WHERE [DurationInHours] > 30
);