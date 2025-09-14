CREATE TABLE [dbo].[EmployeesEstimatedBonusAmount]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY,
	[EstimatedBonusAmount] MONEY NOT NULL	-- расчётная величина премии
	FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)