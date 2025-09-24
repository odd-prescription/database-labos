/*  Диагнозы пациентов
	Описание: 
		Здесь хранятся записи о диагнозах пациентов (это всё) и какому паценту принадлежит диагноз
		Эта таблица связана с таблицей PrescibedTreatments
*/

CREATE TABLE [dbo].[PatientDiagnoses]
(
	[DiagnosisId] INT PRIMARY KEY,
	[Diagnosis] NVARCHAR(60) NOT NULL,
	[Patient] INT NOT NULL,
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
)
