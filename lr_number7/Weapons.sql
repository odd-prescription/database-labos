CREATE TABLE [dbo].[Weapons]
(
	[WeaponId] NVARCHAR(6) NOT NULL PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Type] INT NOT NULL, -- Меч, лук, секира, топор...
	[Damage] INT NOT NULL CHECK([Damage] >= 0),
	[Material] INT NOT NULL,
	[Spell] INT,
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId]),
	FOREIGN KEY ([Spell]) REFERENCES [ItemSpells]([SpellId]),
	FOREIGN KEY ([Material]) REFERENCES [ItemMaterials]([MaterialId]),
	FOREIGN KEY ([Type]) REFERENCES [ItemTypes]([TypeId])
)
