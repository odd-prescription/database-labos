CREATE TABLE [dbo].[Employees]
(
	[EmployeeId] INT NOT NULL IDENTITY PRIMARY KEY,
	[LastNameAndInitials] NVARCHAR(60) NOT NULL		-- фамилия и инициалы сотрудника
);