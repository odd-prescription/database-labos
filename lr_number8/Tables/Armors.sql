CREATE TABLE [dbo].[Armors]
(
	[ArmorId] NVARCHAR(6) PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Protection] INT NOT NULL CHECK([Protection] >= 0),
	[Material] INT NOT NULL, -- Железная, лунного золота, двемерская...
	[Type] INT NOT NULL, -- На голову, на тело, на руки, на ноги
	[Spell] INT, -- Поглощения душ, поджога, обморожения...
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId]),
	FOREIGN KEY ([Spell]) REFERENCES [ItemSpells]([SpellId]),
	FOREIGN KEY ([Material]) REFERENCES [ItemMaterials]([MaterialId]),
	FOREIGN KEY ([Type]) REFERENCES [ItemTypes]([TypeId])
)