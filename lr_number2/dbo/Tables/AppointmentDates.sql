/*  Даты явки пациентов к врачам
	Описание: 

*/

CREATE TABLE [dbo].[AppointmentDates]
(
	[AppointmentDate] DATETIME2 NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	[Patient] INT NOT NULL,
	[AppointmentStatus] BIT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel (DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (Patient) REFERENCES Patients (PatientId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
)
