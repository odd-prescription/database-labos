-- UPDATE и DELETE
USE db_lr_9;
GO
UPDATE [Materials] SET 
	[Materials].[URL] = 'https://youtu.be/jVFvXKDKCZg?si=2k3F7X09PblzmoUS'
	WHERE [Materials].[Id] = 1;

DELETE FROM [Materials];
DBCC CHECKIDENT('Materials', RESEED, 0); -- сброс IDENTITY

/*
INSERT INTO [Materials] ([Lesson], [Description], [URL]) VALUES
(1, 'Презентация по Python', 'https://example.com/python_presentation.pdf'),
(1, 'Задачи по Python', 'https://example.com/python_tasks.pdf'),
(2, 'Справочник по типам данных', 'https://example.com/python_types.pdf'),
(3, 'Рецепты пасты', 'https://example.com/pasta_recipes.pdf'),
(4, 'Рецепты пиццы', 'https://example.com/pizza_recipes.pdf'),
(5, 'Руководство по JavaScript', 'https://example.com/js_guide.pdf'),
(6, 'Введение в ML', 'https://example.com/ml_intro.pdf'),
(7, 'Материалы по Древнему Египту', 'https://example.com/egypt_materials.pdf'),
(8, 'Учебник по Photoshop', 'https://example.com/photoshop_guide.pdf'),
(9, 'Схемы для начинающих', 'https://example.com/electronics_schemes.pdf'),
(10, 'Рецепты хлеба', 'https://example.com/bread_recipes.pdf'),
(11, 'Гайд по кибербезопасности', 'https://example.com/cybersecurity_guide.pdf'),
(12, 'Психология общения', 'https://example.com/communication_guide.pdf'),
(13, 'Гайд по композиции', 'https://example.com/photo_composition.pdf');
*/
GO