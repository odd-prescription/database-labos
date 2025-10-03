-- LIKE & BETWEEN
SELECT * FROM [dbo].[Items]
	WHERE [Name] LIKE 'Желез%' OR ([Price] BETWEEN 100 AND 400);

