-- Расписания приёмов у врачей
-- нужно?

CREATE TABLE [dbo].[MedicalSchedule]
(
	[WorkTime] DATETIME2 NOT NULL PRIMARY KEY,
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel (DoctorId)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	-- ?
)
