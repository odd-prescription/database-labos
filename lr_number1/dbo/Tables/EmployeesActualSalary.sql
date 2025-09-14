CREATE TABLE [dbo].[EmployeesActualSalary]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY,
	[ActualSalary] MONEY NOT NULL			-- фактическая выработка
	FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)