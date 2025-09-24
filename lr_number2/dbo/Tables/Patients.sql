/*  Пациенты
	Описание: 
		Здесь хранятся записи о пациентах: их имени-фамилии, пола и адрес проживания.
		Эта таблица связана со всеми таблицами в БД, за исключением MedicalCabinets и Personnel
*/


CREATE TABLE [dbo].[Patients]
(
	[PatientId] INT NOT NULL PRIMARY KEY,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
	[Gender] NVARCHAR(10),
	[Address] NVARCHAR(80)
)
