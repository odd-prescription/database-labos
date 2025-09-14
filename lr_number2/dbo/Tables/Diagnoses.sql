-- Диагнозы пациентов

CREATE TABLE [dbo].[Diagnoses]
(
	[Patient] INT NOT NULL PRIMARY KEY,
	[Diagnosis] NVARCHAR(60) NOT NULL,
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	-- выписавший доктор, МКБ, лечение(?)
)
