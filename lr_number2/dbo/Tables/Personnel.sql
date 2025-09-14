-- Медицинский персонал (доктора, мед- сёстра/братья)

CREATE TABLE [dbo].[Personnel]
(
	[DoctorId] INT NOT NULL IDENTITY PRIMARY KEY,
	[Specialization] NVARCHAR(20) NOT NULL,
	[LastName] NVARCHAR(60) NOT NULL,
	[FirstName] NVARCHAR(60) NOT NULL,
	-- Тут д.б участок, который обслуживает доктор
	
)
