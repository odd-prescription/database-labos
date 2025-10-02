CREATE TABLE [dbo].[Weapons]
(
	[WeaponId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[Damage] INT NOT NULL CHECK([Damage] >= 0),
	[Material] NVARCHAR(20) NOT NULL,
	[Spell] NVARCHAR(50),
)
