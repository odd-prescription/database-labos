CREATE TABLE [dbo].[Armors]
(
	[ArmorId] NVARCHAR(6) PRIMARY KEY,
	[ItemId] NVARCHAR(6) NOT NULL,
	[Protection] INT NOT NULL CHECK([Protection] >= 0),
	[Material] NVARCHAR(20) NOT NULL, -- Железная, лунного золота, двемерская...
	[Type] NVARCHAR(20) NOT NULL, -- На голову, на тело, на руки, на ноги
	[Spell] NVARCHAR(50), -- Поглощения душ, поджога, обморожения...
	FOREIGN KEY ([ItemId]) REFERENCES [Items]([ItemId])
)
