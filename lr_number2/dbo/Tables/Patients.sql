-- Пациенты

CREATE TABLE [dbo].[Patients]
(
	[PatientId] INT NOT NULL PRIMARY KEY,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL
)
