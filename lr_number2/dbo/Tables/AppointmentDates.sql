/*  Даты явки пациентов к врачам
	Описание: 

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
