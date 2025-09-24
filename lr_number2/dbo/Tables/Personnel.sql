/*  Медицинский персонал
	Описание: 
		Здесь хранятся записи о медицинском персонале (врачах), их специализации, имени-фамилии.
		На эту таблицу ссылаются:
			- Все таблицы, кроме Patients.
		Эта таблица не ссылается.
*/

CREATE TABLE [dbo].[Personnel]
(
	[DoctorId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Specialization] NVARCHAR(20) NOT NULL,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
)
