-- Даты явки пациентов к врачам

CREATE TABLE [dbo].[AppointmentDates]
(
	[AppointmentDate] DATETIME2 NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	[Patient] INT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel (DoctorId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (Patient) REFERENCES Patients (PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)
