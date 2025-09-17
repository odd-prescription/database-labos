/*  Диагнозы пациентов
	Описание: 

*/


CREATE TABLE [dbo].[PatientDiagnoses]
(
	[DiagnosisId] INT PRIMARY KEY,
	[Diagnosis] NVARCHAR(60) NOT NULL,
	[Patient] INT NOT NULL,
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
