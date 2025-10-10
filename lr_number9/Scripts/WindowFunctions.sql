USE db_lr_9;
GO
-- Оконные функции (ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD)
SELECT [Student], 
	[Course],
	ROW_NUMBER() OVER (PARTITION BY [Student] ORDER BY [UniqueCode] DESC) AS [RowNumb]
	FROM [Certificates] AS [Cert];

SELECT 
	LAG() OVER () AS []
	FROM [] AS [];

SELECT 
	LEAD() OVER () AS []
	FROM [] AS [];

SELECT 
	RANK() OVER () AS []
	FROM [] AS [];

SELECT 
	DENSE_RANK() OVER () AS []
	FROM [] AS [];

GO
