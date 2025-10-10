USE db_lr_9;
GO
-- UNION

SELECT [LastName], [FirstName], [Patronymic] FROM [Students]
UNION
SELECT [LastName], [FirstName], [Patronymic] FROM [Teachers]