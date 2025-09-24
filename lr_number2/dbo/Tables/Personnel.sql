/*  Медицинский персонал
	Описание: 
		Здесь хранятся записи о медицинском персонале (врачах), их специализации, имени-фамилии.
		Эта таблица связана со всеми таблицами, кроме Patients.
*/

CREATE TABLE [dbo].[Personnel]
(
	[DoctorId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Specialization] NVARCHAR(20) NOT NULL,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
)
