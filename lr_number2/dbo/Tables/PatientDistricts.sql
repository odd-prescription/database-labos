-- Участки, к которым приписаны пациенты

CREATE TABLE [dbo].[PatientDistricts]
(
	[Patient] INT NOT NULL PRIMARY KEY,
	[District] TINYINT UNIQUE,
	FOREIGN KEY (Patient) REFERENCES Patients(PatientId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	-- адрес пациента
)
