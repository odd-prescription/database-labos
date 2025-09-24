/*  Выписанное лечение
	Описание: 
		Здесь хранятся записи о выписанном пациентам лечении: 
		    - Какому пациенту
			- Какой доктор выписал
			- Диагноз пациента
			- Лечение пациенту
		На эту таблицу не ссылаются.
		Эта таблица ссылается на:
			- Patients
			- Personnel
			- PatientDiagnoses
*/

CREATE TABLE [dbo].[PrescribedTreatments]
(
	[TreatmentId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Patient] INT NOT NULL,
	[Doctor] INT NOT NULL,
	[Diagnosis] INT,
	[Treatment] NVARCHAR(250),
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (Diagnosis) REFERENCES PatientDiagnoses(DiagnosisId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
)
