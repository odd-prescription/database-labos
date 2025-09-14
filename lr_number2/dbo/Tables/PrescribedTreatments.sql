-- Выписанное лечение

CREATE TABLE [dbo].[PrescribedTreatments]
(
	[TreatmentId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Patient] INT NOT NULL,
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE CASCADE
		ON UPDATE CASCADE
)
