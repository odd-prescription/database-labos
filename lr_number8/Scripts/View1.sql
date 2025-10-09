CREATE VIEW [dbo].[View1]
	AS SELECT [Cert].[UniqueCode], [Cert].[Course], [Cert].[Description], [Stud].[LastName], [Stud].[FirstName] 
		FROM [Certificates] AS [Cert]
	INNER JOIN [Students] AS [Stud]
		ON [Cert].[Student] = [Stud].[Id];

GO
