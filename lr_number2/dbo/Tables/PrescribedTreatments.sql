/*  Выписанное лечение
	Описание: 

*/

CREATE TABLE [dbo].[PrescribedTreatments]
(
	[TreatmentId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Patient] INT NOT NULL,
	[Doctor] INT NOT NULL,
	[Diagnosis] INT,
	[Treatment] NVARCHAR(250),
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (Diagnosis) REFERENCES PatientDiagnoses(DiagnosisId)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
)
