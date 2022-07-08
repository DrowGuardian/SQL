--Таблица employees

/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null */

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

--Наполнить таблицу employee 70 строками.


insert into employees (employee_name)
values  ('Петр7ова Ольга Петровна'),
		('Архипова Василиса Геннадьевна'),
		('Вавилов Альберт Валентинович'),
		('Иванов Платон Иванович'),
		('Вавилова Юлия Викторовна'),
		('Лазарева Александра Данииловна'),
		('Николаева Маргарита Ярославовна'),
		('Захаров Даниил Александрович'),
		('Соколова Диана Николаевна'),
		('Сидорова Ольга Степановна'),
		('Ефимов Ибрагим Тимофеевич'),
		('Сафонова Екатерина Ивановна'),
		('Кузьмина Вероника Максимовна'),
		('Яковлева Полина Максимовна'),
		('Зайцева Дарина Давидовна'),
		('Муравьева Камилла Матвеевна'),
		('Григорьев Матвей Святославович'),
		('Симонов Александр Михайлович'),
		('Белова Татьяна Фёдоровна'),
		('Фролов Фёдор Михайлович'),
		('Данилова Алёна Глебовна'),
		('Алексеева Аиша Михайловна'),
		('Васильев Иван Даниилович'),
		('Дорофеев Иван Кириллович'),
		('Суворов Андрей Даниилович'),
		('Быков Степан Давидович'),
		('Федоров Михаил Матвеевич'),
		('Медведев Даниил Андреевич'),
		('Мещеряков Даниил Андреевич'),
		('Белоусов Лев Максимович'),
		('Селиванова Антонина Львовна'),
		('Осипов Матвей Александрович'),
		('Орлов Даниил Петрович'),
		('Бородина Виктория Ярославовна'),
		('Филимонов Семён Степанович'),
		('Дорохов Иван Михайлович'),
		('Семин Алексей Михайлович'),
		('Александрова Мария Владиславовна'),
		('Васильев Лев Матвеевич'),
		('Григорьев Марк Дмитриевич'),
		('Рудакова Виктория Мироновна'),
		('Жукова Ева Данииловна'),
		('Киреева Дарья Ивановна'),
		('Игнатьев Марк Владимирович'),
		('Платонов Ярослав Андреевич'),
		('Шаповалова Василиса Евгеньевна'),
		('Третьяков Илья Андреевич'),
		('Антонов Артём Никитич'),
		('Кулешова Александра Даниэльевна'),
		('Жуков Ярослав Егорович'),
		('Родионов Александр Германович'),
		('Лебедев Константин Арсентьевич'),
		('Киреев Семён Артемьевич'),
		('Морозова Милана Захаровна'),
		('Мартынов Лука Михайлович'),
		('Хохлов Илья Васильевич'),
		('Журавлев Алексей Тихонович'),
		('Родин Лев Матвеевич'),
		('Савельев Ярослав Владиславович'),
		('Демин Игорь Маркович'),
		('Павлов Владислав Эминович'),
		('Тарасов Кирилл Денисович'),
		('Фролов Максим Артёмович'),
		('Плотникова Анастасия Марковна'),
		('Петровский Дмитрий Богданович'),
		('Емельянов Дмитрий Павлович'),
		('Антонова Айлин Марковна'),
		('Нечаева Марьям Максимовна'),
		('Мельникова Мария Владимировна'),
		('Орлов Даниил Владимирович');
		
--Таблица salary
	
    /*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null */

create table salary(
	id serial primary key,
	monthly_salary int not null
);

/*Наполнить таблицу salary 16 строками:
       -1000
       ...
       -2500 */
       
insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
	
--Таблица employee_salary

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null */

   create table employee_salary(
   		id serial primary key,
   		employees_id int not null unique,
   		salary_id int not null
   );
   
/*Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */
  
    insert into employee_salary(id_employee, id_salary)
  values (1, 15),
         (2, 14),
         (3, 13),
         (4, 12),
         (5, 11),
         (6, 10),
         (7, 9),
         (8, 8),
         (9, 7),
         (10, 6),
         (11, 5),
         (12, 4),
         (13, 3),
         (14, 2),
         (15, 1),
         (16, 2),
         (17, 3),
         (18, 4),
         (19, 5),
         (20, 6),
         (21, 7),
         (23, 8),
         (27, 9),
         (35, 10),
         (38, 11),
         (42, 12),
         (44, 13),
         (47, 14),
         (49, 15),
         (60, 14),
         (71, 16),
         (72, 14),
         (73, 5),
         (74, 15),
         (75, 1),
         (76, 9),
         (77, 1),
         (78, 11),
         (79, 12),
         (80, 1);

--Таблица roles
        
/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique */

create table roles(
	id serial primary key,
	role_name int not null unique
);
   
--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

/*Наполнить таблицу roles 20 строками:
-Junior Python developer
-...
-Senior Automation QA engineer*/

insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

--Таблица roles_employee

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id) */

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(role_id)
		references roles(id),
	foreign key(employee_id)
		references employees(id)
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (1, 19),
       (2, 14),
       (3, 13),
       (4, 12),
       (5, 11),
       (6, 10),
       (7, 9),
       (8, 8),
       (9, 7),
       (10, 6),
       (11, 5),
       (12, 4),
       (13, 3),
       (14, 2),
       (15, 1),
       (16, 2),
       (17, 3),
       (18, 4),
       (19, 5),
       (20, 6),
       (21, 7),
       (22, 8),
       (23, 9),
       (24, 10),
       (25, 11),
       (26, 12),
       (27, 13),
       (28, 14),
       (29, 15),
       (30, 14),
       (31, 13),
       (39, 12),
       (38, 11),
       (37, 10),
       (36, 9),
       (35, 8),
       (34, 7),
       (33, 6),
       (32, 5),
       (41, 3);
