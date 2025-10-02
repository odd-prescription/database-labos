CREATE TABLE [dbo].[Weapons]
(
	[WeaponId] NVARCHAR(6) NOT NULL PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Type] NVARCHAR(10) NOT NULL, -- Меч, лук, секира, топор...
	[Damage] INT NOT NULL CHECK([Damage] >= 0),
	[Material] NVARCHAR(20) NOT NULL, -- Железное, древних нордов, стальное...
	[Spell] NVARCHAR(50), -- Поглощения душ, поджога, обморожения...
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)
