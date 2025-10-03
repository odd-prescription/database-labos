
SELECT * FROM [dbo].[Items]
	WHERE [Price] > 400 AND [Weight] > 10.00
GO

SELECT * FROM [dbo].[Items] 
	WHERE [Price] < 1000;
GO

-- GROUP BY & HAVING
SELECT COUNT(*) AS [PlayerCount] FROM [dbo].[Inventory]
	GROUP BY [PlayerId]
	HAVING [PlayerId] = 'PLR001'
GO

INSERT INTO [dbo].[ItemTypes] ([TypeId], [Type]) VALUES
(1, 'Амулет'),
(2, 'Кольцо'),
(3, 'Голова'),
(4, 'Тело'),
(5, 'Руки'),
(6, 'Ноги'),
(7, 'Меч'),
(8, 'Лук'),
(9, 'Топор'),
(10, 'Щит');
GO

INSERT INTO [dbo].[ItemMaterials] ([MaterialId], [Material]) VALUES
(1, 'Железо'),
(2, 'Сталь'),
(3, 'Двемерский металл'),
(4, 'Эбонит'),
(5, 'Кожа'),
(6, 'Ткань');
GO

INSERT INTO [dbo].[ItemSpells] ([SpellId], [Spell]) VALUES
(1, 'Поглощения душ'),
(2, 'Огненного урона'),
(3, 'Обморожения'),
(4, 'Увеличения здоровья'),
(5, 'Увеличения маны');
GO

INSERT INTO [dbo].[Items] ([ItemId], [Name], [Description], [Price], [Weight]) VALUES
('ITM001', 'Железный шлем', 'Шлем из железа', 125, 5.00),
('ITM002', 'Стальной меч', 'Стальной меч', 250, 10.00),
('ITM003', 'Кожаные перчатки', 'Перчатки из кожи', 50, 2.00),
('ITM004', 'Амулет Талоса', 'Амулет Талоса. -15% времени восстановления Крика', 200, 0.50),
('ITM005', 'Двемерский нагрудник', 'Тяжёлый доспех двемеров', 1200, 45.00),
('ITM006', 'Эбонитовый лук', 'Лук из эбонита', 1440, 16.00),
('ITM007', 'Тканая рубаха', 'Простая одежда крестьян', 10, 1.00),
('ITM008', 'Кольцо магии', 'Кольцо с магическим зачарованием', 300, 0.20),
('ITM009', 'Железный щит', 'Железный щит', 150, 12.00),
('ITM010', 'Стальные сапоги', 'Сапоги из стали', 200, 8.00),
('ITM011', 'Железный топор', 'Боевой железный топор', 180, 11.00);
GO

INSERT INTO [dbo].[Accessories] ([AccessoryId], [ItemId], [Type], [Spell]) VALUES
('ACC001', 'ITM004', 1, 4), -- Амулет Мары, увеличение здоровья
('ACC002', 'ITM008', 2, 5); -- Кольцо магии, увеличение магии
GO



INSERT INTO [dbo].[Clothes] ([ClothId], [ItemId], [Type]) VALUES
('CLT001', 'ITM007', 4), -- Тканая рубаха, тело
('CLT002', 'ITM003', 5); -- Кожаные перчатки, руки
GO



INSERT INTO [dbo].[Armors] ([ArmorId], [ItemId], [Protection], [Material], [Type], [Spell]) VALUES
('ARM001', 'ITM001', 20, 1, 3, NULL),  -- Железный шлем, без зачарования
('ARM002', 'ITM005', 45, 3, 4, 4),     -- Двемерский нагрудник, c увеличением здоровья
('ARM003', 'ITM010', 25, 2, 6, NULL),  -- Стальные сапоги, без зачарования
('ARM004', 'ITM009', 30, 1, 10, NULL); -- Железный щит, без зачарования
GO


INSERT INTO [dbo].[Weapons] ([WeaponId], [ItemId], [Type], [Damage], [Material], [Spell]) VALUES
('WPN001', 'ITM002', 7, 12, 2, NULL),  -- Стальной меч, без зачарования
('WPN002', 'ITM006', 8, 18, 4, 2),     -- Эбонитовый лук, огненный урон
('WPN003', 'ITM011', 9, 14, 1, NULL); -- Железный топор, без зачарования
GO

INSERT INTO [dbo].[Players] ([PlayerId], [Name]) VALUES
('PLR001', 'Довакин');
GO

INSERT INTO [dbo].[Inventory] ([PlayerId], [ItemId], [Quantity]) VALUES
('PLR001', 'ITM001', 1), -- Железный шлем
('PLR001', 'ITM002', 1), -- Стальной меч
('PLR001', 'ITM003', 2), -- Кожаные перчатки
('PLR001', 'ITM004', 1), -- Амулет Мары
('PLR001', 'ITM007', 1), -- Тканая рубаха
('PLR001', 'ITM009', 1), -- Железный щит
('PLR001', 'ITM011', 1); -- Железный топор
GO

SELECT TOP 4 * FROM [dbo].[Items]
	ORDER BY [Name] ASC
GO

-- LIKE & BETWEEN
SELECT * FROM [dbo].[Items]
	WHERE [Name] LIKE 'Желез%' OR ([Price] BETWEEN 100 AND 400);
GO
