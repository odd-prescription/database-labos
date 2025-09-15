-- Расписания приёмов у врачей
-- нужно?

CREATE TABLE [dbo].[MedicalSchedule]
(
	[WorkTime] DATETIME2 NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	[Cabinet] NVARCHAR(10) NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel (DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	FOREIGN KEY (Cabinet) REFERENCES MedicalCabinets(Cabinet)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	-- ?
)
