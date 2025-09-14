CREATE TABLE [dbo].[EmployeesSalary]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY,
	[Salary] MONEY NOT NULL CHECK (Salary > 0)				-- оклад, 
	FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)