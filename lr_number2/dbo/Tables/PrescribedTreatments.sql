/*  Выписанное лечение
	Описание: 
		Здесь хранятся записи о выписанном пациентам лечении: 
		    - Какому пациенту
			- Какой доктор выписал
			- Диагноз пациента
			- Лечение пациенту
		Эта таблица не связана с другими таблицами
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
