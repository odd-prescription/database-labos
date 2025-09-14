CREATE TABLE [dbo].[EmployeesPosition]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY,
	[Position] NVARCHAR(40) NOT NULL		-- должность
	FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)