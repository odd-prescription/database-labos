USE db_lr_8;

DELETE FROM Certificates;
DELETE FROM CoursesRegistrations;
DELETE FROM Homeworks;
DELETE FROM Lessons;
DELETE FROM Materials;
DELETE FROM Reviews;
DELETE FROM Courses;
DELETE FROM Students;
DELETE FROM Teachers;

DBCC CHECKIDENT('Certificates', RESEED, 0);
DBCC CHECKIDENT('CoursesRegistrations', RESEED, 0);
DBCC CHECKIDENT('Homeworks', RESEED, 0);
DBCC CHECKIDENT('Lessons', RESEED, 0);
DBCC CHECKIDENT('Materials', RESEED, 0);
DBCC CHECKIDENT('Reviews', RESEED, 0);
DBCC CHECKIDENT('Courses', RESEED, 0);
DBCC CHECKIDENT('Students', RESEED, 0);
DBCC CHECKIDENT('Teachers', RESEED, 0);

-- Заполнение таблицы Teachers
INSERT INTO [Teachers] ([LastName], [FirstName], [Patronymic], [Biography], [Experience], [Email], [Password], [Birthday]) VALUES
('Иванов', 'Александр', 'Сергеевич', 'Эксперт по программированию', 10, 'ivanov@example.com', 'hash1234567890abcdef1234567890abcdef', '15/05/1980'),
('Петрова', 'Елена', 'Викторовна', 'Шеф-повар с международным опытом', 12, 'petrova@example.com', 'hashabcdef1234567890abcdef12345678', '22/03/1975'),
('Сидоров', 'Михаил', 'Алексеевич', 'Преподаватель веб-разработки', 8, 'sidorov@example.com', 'hash7890abcdef1234567890abcdef1234', '10/07/1985'),
('Кузнецова', 'Ольга', 'Игоревна', 'Специалист по машинному обучению', 7, 'kuznetsova@example.com', 'hash4567890abcdef1234567890abcdef12', '05/12/1982'),
('Смирнов', 'Дмитрий', 'Владимирович', 'Историк и лектор', 15, 'smirnov@example.com', 'hash1237890abcdef1234567890abcdef56', '18/09/1970'),
('Морозова', 'Анна', 'Петровна', 'Преподаватель дизайна', 6, 'morozova@example.com', 'hash7891234567890abcdef1234567890ab', '25/01/1988'),
('Васильев', 'Сергей', 'Николаевич', 'Инженер и преподаватель', 9, 'vasiliev@example.com', 'hash4561237890abcdef1234567890abcdef', '30/06/1983'),
('Попова', 'Мария', 'Александровна', 'Кулинарный эксперт', 11, 'popova@example.com', 'hash1234567890abcdef7891234567890abc', '12/04/1978'),
('Новиков', 'Андрей', 'Васильевич', 'Специалист по кибербезопасности', 10, 'novikov@example.com', 'hash7894561237890abcdef1234567890ab', '20/08/1980'),
('Федорова', 'Наталья', 'Михайловна', 'Лектор по психологии', 8, 'fedorova@example.com', 'hash1237894561237890abcdef1234567890', '15/11/1985'),
('Лебедев', 'Игорь', 'Олегович', 'Преподаватель фотографии', 7, 'lebedev@example.com', 'hash4567891234567890abcdef1234567890', '03/02/1987');

-- Заполнение таблицы Courses
INSERT INTO [Courses] ([Title], [Description], [Price], [DurationInHours], [Teacher]) VALUES
('Основы программирования на Python', 'Изучение Python с нуля', 15000, 40, 1),
('Кулинарное искусство: Итальянская кухня', 'Готовим пасту и пиццу', 12000, 20, 2),
('Веб-разработка с JavaScript', 'Создание современных веб-приложений', 18000, 50, 3),
('Машинное обучение', 'Основы ML и нейронных сетей', 25000, 60, 4),
('История Древнего мира', 'Погружение в древние цивилизации', 10000, 30, 5),
('Графический дизайн', 'Работа с Adobe Photoshop и Illustrator', 14000, 35, 6),
('Основы электроники', 'Изучение схем и микроконтроллеров', 16000, 45, 7),
('Выпечка хлеба дома', 'Секреты домашней выпечки', 11000, 25, 8),
('Кибербезопасность для начинающих', 'Защита данных и сетей', 20000, 50, 9),
('Психология общения', 'Эффективное взаимодействие', 13000, 30, 10),
('Фотография для начинающих', 'Основы композиции и света', 12000, 25, 11);

-- Заполнение таблицы Students
INSERT INTO [Students] ([LastName], [FirstName], [Patronymic], [Biography], [Email], [Password], [Birthday]) VALUES
('Соколов', 'Иван', 'Петрович', 'Люблю программировать', 'sokolov@example.com', 'hash1234567890abcdef1234567890abcdef', '10/06/2005'),
('Коваленко', 'Анна', 'Сергеевна', 'Увлекаюсь кулинарией', 'kovalenko@example.com', 'hashabcdef1234567890abcdef12345678', '15/09/2003'),
('Михайлов', 'Артём', 'Владимирович', 'Интересуюсь веб-разработкой', 'mikhailov@example.com', 'hash7890abcdef1234567890abcdef1234', '22/03/2004'),
('Зайцева', 'Екатерина', 'Андреевна', 'Хочу изучить ML', 'zaitseva@example.com', 'hash4567890abcdef1234567890abcdef12', '18/12/2002'),
('Григорьев', 'Максим', 'Игоревич', 'Люблю историю', 'grigoriev@example.com', 'hash1237890abcdef1234567890abcdef56', '05/07/2006'),
('Титова', 'Софья', 'Михайловна', 'Увлекаюсь дизайном', 'titova@example.com', 'hash7891234567890abcdef1234567890ab', '12/11/2004'),
('Егоров', 'Даниил', 'Сергеевич', 'Интересуюсь электроникой', 'egorov@example.com', 'hash4561237890abcdef1234567890abcdef', '20/08/2003'),
('Белова', 'Алина', 'Олеговна', 'Люблю готовить', 'belova@example.com', 'hash1234567890abcdef7891234567890abc', '25/04/2005'),
('Козлов', 'Никита', 'Александрович', 'Интересуюсь безопасностью', 'kozlov@example.com', 'hash7894561237890abcdef1234567890ab', '30/01/2004'),
('Романова', 'Юлия', 'Викторовна', 'Увлекаюсь психологией', 'romanova@example.com', 'hash1237894561237890abcdef1234567890', '15/10/2003'),
('Волков', 'Егор', 'Дмитриевич', 'Люблю фотографировать', 'volkov@example.com', 'hash4567891234567890abcdef1234567890', '08/02/2005'),
('Орлова', 'Виктория', 'Алексеевна', 'Хочу изучить Python', 'orlova@example.com', 'hash1234567890abcdef4567891234567890', '17/05/2004');

-- Заполнение таблицы CoursesRegistrations
INSERT INTO [CoursesRegistrations] ([Course], [Student], [RegistrationDate]) VALUES
(1, 1, '01/01/2025'), (1, 3, '02/01/2025'), (1, 12, '03/01/2025'),
(2, 2, '01/01/2025'), (2, 8, '02/01/2025'),
(3, 3, '01/01/2025'), (3, 1, '02/01/2025'),
(4, 4, '01/01/2025'), (4, 12, '02/01/2025'),
(5, 5, '01/01/2025'), (6, 6, '01/01/2025'),
(7, 7, '01/01/2025'), (8, 8, '01/01/2025'),
(9, 9, '01/01/2025'), (10, 10, '01/01/2025'),
(11, 11, '01/01/2025');

-- Заполнение таблицы Lessons
INSERT INTO [Lessons] ([Course], [Content], [VideoURL]) VALUES
(1, 'Введение в Python', 'https://example.com/python_intro.mp4'),
(1, 'Переменные и типы данных', 'https://example.com/python_variables.mp4'),
(2, 'Приготовление пасты', 'https://example.com/pasta_cooking.mp4'),
(2, 'Пицца: тесто и соусы', 'https://example.com/pizza_basics.mp4'),
(3, 'Основы JavaScript', 'https://example.com/js_intro.mp4'),
(4, 'Введение в машинное обучение', 'https://example.com/ml_intro.mp4'),
(5, 'Древний Египет', 'https://example.com/egypt_history.mp4'),
(6, 'Работа с Photoshop', 'https://example.com/photoshop_basics.mp4'),
(7, 'Основы схемотехники', 'https://example.com/electronics_intro.mp4'),
(8, 'Выпечка ржаного хлеба', 'https://example.com/bread_baking.mp4'),
(9, 'Основы кибербезопасности', 'https://example.com/cybersecurity_intro.mp4'),
(10, 'Эффективное общение', 'https://example.com/communication_skills.mp4'),
(11, 'Композиция в фотографии', 'https://example.com/photo_composition.mp4');

-- Заполнение таблицы Materials
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

-- Заполнение таблицы Homeworks
INSERT INTO [Homeworks] ([Student], [Lesson], [Description], [DueDate], [MaxScore]) VALUES
(1, 1, 'Написать программу на Python', '15/02/2025', 10),
(3, 1, 'Решить задачи по Python', '15/02/2025', 10),
(12, 1, 'Создать функцию на Python', '15/02/2025', 10),
(2, 3, 'Приготовить пасту', '20/02/2025', 8),
(8, 3, 'Приготовить соус', '20/02/2025', 8),
(3, 5, 'Написать скрипт на JavaScript', '25/02/2025', 12),
(4, 6, 'Решить задачу по ML', '28/02/2025', 15),
(5, 7, 'Написать эссе по истории', '01/03/2025', 10),
(6, 8, 'Создать дизайн в Photoshop', '05/03/2025', 10),
(7, 9, 'Собрать схему', '10/03/2025', 12),
(8, 10, 'Испечь хлеб', '15/03/2025', 8),
(9, 11, 'Создать защищённый пароль', '20/03/2025', 10),
(10, 12, 'Практика общения', '25/03/2025', 10),
(11, 13, 'Сделать фото по композиции', '30/03/2025', 10);

-- Заполнение таблицы Reviews
INSERT INTO [Reviews] ([Stars], [Student], [Description], [Course], [CreatedAt]) VALUES
(5, 1, 'Отличный курс по Python!', 1, '01/03/2025'),
(4, 2, 'Вкусные рецепты, но мало практики', 2, '02/03/2025'),
(5, 3, 'JavaScript стал понятнее', 3, '03/03/2025'),
(4, 4, 'Хороший курс по ML', 4, '04/03/2025'),
(5, 5, 'Интересно про историю', 5, '05/03/2025'),
(3, 6, 'Дизайн интересный, но сложный', 6, '06/03/2025'),
(4, 7, 'Электроника увлекательная', 7, '07/03/2025'),
(5, 8, 'Хлеб получился вкусный!', 8, '08/03/2025'),
(4, 9, 'Кибербезопасность полезна', 9, '09/03/2025'),
(5, 10, 'Общение стало легче', 10, '10/03/2025'),
(4, 11, 'Фотография вдохновляет', 11, '11/03/2025'),
(5, 12, 'Python стал понятнее', 1, '12/03/2025');

-- Заполнение таблицы Certificates
INSERT INTO [Certificates] ([UniqueCode], [Course], [Student], [Description], [IssueDate]) VALUES
('CERT-PYTHON-001', 1, 1, 'Сертификат за прохождение курса Python', '01/04/2025'),
('CERT-PYTHON-002', 1, 3, 'Сертификат за прохождение курса Python', '01/04/2025'),
('CERT-COOK-001', 2, 2, 'Сертификат за курс итальянской кухни', '02/04/2025'),
('CERT-COOK-002', 2, 8, 'Сертификат за курс итальянской кухни', '02/04/2025'),
('CERT-JS-001', 3, 3, 'Сертификат за курс веб-разработки', '03/04/2025'),
('CERT-ML-001', 4, 4, 'Сертификат за курс машинного обучения', '04/04/2025'),
('CERT-HIST-001', 5, 5, 'Сертификат за курс истории', '05/04/2025'),
('CERT-DESIGN-001', 6, 6, 'Сертификат за курс дизайна', '06/04/2025'),
('CERT-ELEC-001', 7, 7, 'Сертификат за курс электроники', '07/04/2025'),
('CERT-BREAD-001', 8, 8, 'Сертификат за курс выпечки', '08/04/2025'),
('CERT-CYBER-001', 9, 9, 'Сертификат за курс кибербезопасности', '09/04/2025'),
('CERT-PSYCH-001', 10, 10, 'Сертификат за курс психологии', '10/04/2025'),
('CERT-PHOTO-001', 11, 11, 'Сертификат за курс фотографии', '11/04/2025');