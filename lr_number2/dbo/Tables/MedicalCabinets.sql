/*  Врачебные кабинеты
	Описание: 
		Здесь хранятся записи о кабинетах, их назначении и какому доктору они принадлежат
		Эта таблица связана с таблицей AppointmentDates
		На эту таблицу ссылаются:
			- AppointmentDates
		Эта таблица ссылается на:
			- Personnel
*/

CREATE TABLE [dbo].[MedicalCabinets]
(
	[Cabinet] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Assignment] NVARCHAR(60),
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
