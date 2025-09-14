-- Врачебные кабинеты

CREATE TABLE [dbo].[MedicalCabinets]
(
	[Cabinet] INT NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	-- 
)
