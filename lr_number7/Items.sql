CREATE TABLE [dbo].[Items]
(
	[ItemId] NVARCHAR(10) NOT NULL PRIMARY KEY,
	[ArmorId] NVARCHAR(10),
	[WeaponId] NVARCHAR(10),
	[Name] NVARCHAR(100) NOT NULL DEFAULT 'ITEM_DEFAULT',
	[Description] NVARCHAR(200),
	[Price] INT NOT NULL CHECK([Price] >= 0),
	[Weight] DECIMAL(2, 2) NOT NULL CHECK([Weight] >= 0),
	FOREIGN KEY ([ArmorId]) REFERENCES [Armors]([ArmorId]),
	FOREIGN KEY ([WeaponId]) REFERENCES [Weapons]([WeaponId]),

)
