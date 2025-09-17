/*  Врачебные кабинеты
	Описание: 

*/

CREATE TABLE [dbo].[MedicalCabinets]
(
	[Cabinet] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Assignment] NVARCHAR(60),
	[Doctor] INT NOT NULL,
	FOREIGN KEY (Doctor) REFERENCES Personnel(DoctorId)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	-- 
)
