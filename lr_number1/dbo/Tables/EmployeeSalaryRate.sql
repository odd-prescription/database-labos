CREATE TABLE [dbo].[EmployeeSalaryRate]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY,
	[SalaryRateByPosition] MONEY NOT NULL -- норма выработки по должности
	FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)