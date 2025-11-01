USE db_lr_9;
GO
-- Оконные функции (ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD)
SELECT [Student], 
	[Course],
	ROW_NUMBER() OVER (PARTITION BY [Student] ORDER BY [UniqueCode] DESC) AS [RowNumb]
	FROM [Certificates] AS [Cert];
SELECT 
	LAG([IssueDate]) OVER (PARTITION BY [Student] ORDER BY [IssueDate]) AS [PrevIssue]
	FROM [Certificates] AS [Cert];
SELECT 
	LEAD([IssueDate]) OVER (PARTITION BY [Student] ORDER BY [IssueDate]) AS [NextIssue]
	FROM [Certificates] AS [Cert];
SELECT 
	RANK() OVER (PARTITION BY [Course] ORDER BY [Stars] DESC) AS [Rank]
	FROM [Reviews] AS [Rev];
SELECT 
	DENSE_RANK() OVER (PARTITION BY [Course] ORDER BY [Stars] DESC) AS [DenseRank]
	FROM [Reviews] AS [Rev];

GO
