/*  Пациенты
	Описание: 
		Здесь хранятся записи о пациентах: их имени-фамилии, пола и адрес проживания.
		На эту таблицу ссылаются:
			- Все таблицы, кроме MedicalCabinets и Personnel
		Эта таблица не ссылается.
*/


CREATE TABLE [dbo].[Patients]
(
	[PatientId] INT NOT NULL PRIMARY KEY,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
	[Gender] NVARCHAR(10),
	[Address] NVARCHAR(80)
)
