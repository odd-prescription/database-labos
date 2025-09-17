/*  Пациенты
	Описание: 

*/


CREATE TABLE [dbo].[Patients]
(
	[PatientId] INT NOT NULL PRIMARY KEY,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
	[Gender] NVARCHAR(10),
	[Address] NVARCHAR(80)
)
