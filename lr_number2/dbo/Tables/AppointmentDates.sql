/*  Даты явки пациентов к врачам
	Описание: 
		Здесь хранятся записи о:
			- Дате явки пациентов, 
			- К какому доктору, 
			- Какой пациент
			- В какой кабинет
			- Статус приёма у врача (прошёл/не прошёл)
		Эта таблица не связана с другими таблицами
		На эту таблицу не ссылаются.
		Эта таблица ссылается на:
			- Personnel 
			- Patients
			- MedicalCabinets
*/

CREATE TABLE [dbo].[AppointmentDates]
(
	[AppointmentDate] DATETIME2 NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	[Patient] INT NOT NULL,
	[Cabinet] NVARCHAR(10) NOT NULL,
	[AppointmentStatus] BIT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel (DoctorId)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (Patient) REFERENCES Patients (PatientId)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (Cabinet) REFERENCES MedicalCabinets (Cabinet)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
)
