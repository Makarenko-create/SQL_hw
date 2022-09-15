--Table employees_2

--Создать таблицу employees: id. serial,  primary key; employee_name. Varchar(50), not null
create table employees_2( 
id serial primary key,
employee_name Varchar(50) not null
); 

--Наполнить таблицу employee 70 строка
insert into employees_2 (id, employee_name)
values ('Maria'),
       ('Jhony'),
       ('Marta'),
       ('Julia'),
       ('Barbara'),
       ('Leo'),
       ('Adam'),
       ('Frank'),
       ('Sally'),
       ('Mary'),
       ('Fok'),
       ('Greg'),
       ('Nata'),
       ('Anna'),
       ('Elly'),
       ('Zhanna'),
       ('Eduardo'),
       ('Elen'),
       ('Vanskol'),
       ('Melony'),
       ('Andrey'),
       ('Max'),
       ('Antony'),
       ('Marina'),
       ('Alexa'),
       ('Daria'),
       ('Piotr'),
       ('Mark'),
       ('Karol'),
       ('Sam'),
       ('Anatol'),
       ('Winston'),
       ('Elliz'),
       ('Girlon'),
       ('Oksana'),
       ('Danni'),
       ('Marshal'),
       ('Sasha'),
       ('Pasha'),
       ('Jack'),
       ('Fenklin'),
       ('Hosptik'),
       ('Ursula'),
       ('Nikola'),
       ('Tani'),
       ('Rameo'),
       ('Ilon'),
       ('Ban'),
       ('Anri'),
       ('Naomi'),
       ('Zendaya'),
       ('Huon'),
       ('Yellin'),
       ('Deonrit'),
       ('Sani'),
       ('Marianna'),
       ('Karry'),
       ('Samantha'),
       ('Big'),
       ('Keol'), 
       ('Linda'),
       ('Black'),
       ('Harry'),
       ('Hermi'),
       ('Ron'),
       ('Jinny'),
       ('Sharlot'),
       ('Lucky'),
       ('Livy'),
       ('Karlion');
       
select * from employees_2;    
   
--Table salary_2 
     
--Создать таблицу salary: id. Serial  primary key; monthly_salary. Int, not null  
create table salary_2(
id serial primary key, 
monthly_salary int not null 
); 

--Наполнить таблицу salary 15 строками
insert into salary_2 (monthly_salary) 
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
      
select * from salary_2;

--Table employee_salary_2

--Создать таблицу employee_salary: id. Serial  primary key; employee_id. Int, not null, unique; salary_id. Int, not null
create table employee_salary_2(
id serial primary key,
employee_id int not null unique,
salary_id int not null 
);

--Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary_2(employee_id, salary_id)
values (1, 40),
       (2, 39),
       (3, 38),
       (4, 37),
       (5, 36),
       (6, 35),
       (7, 34),
       (8, 33),
       (9, 32),
       (10, 31),
       (11, 30),
       (12, 29),
       (13, 28),
       (14, 27),
       (15, 26),
       (16, 25),
       (17, 24),
       (18, 23),
       (19, 22),
       (20, 21),
       (21, 20),
       (22, 19),
       (23, 18),
       (24, 17),
       (25, 16),
       (26, 15),
       (27, 14),
       (28, 13),
       (29, 12),
       (30, 11),
       (31, 10),
       (32, 9),
       (33, 8),
       (34, 7),
       (35, 6),
       (36, 5),
       (37, 4),
       (38, 3),
       (39, 2), 
       (40, 1);
      
--UPDATE
update employee_salary_2 set employee_id=75 where id=30;
update employee_salary_2 set employee_id=85 where id=31;
update employee_salary_2 set employee_id=72 where id=32;
update employee_salary_2 set employee_id=78 where id=33;
update employee_salary_2 set employee_id=95 where id=34;
update employee_salary_2 set employee_id=73 where id=35;
update employee_salary_2 set employee_id=99 where id=36;
update employee_salary_2 set employee_id=98 where id=37;
update employee_salary_2 set employee_id=94 where id=38;
update employee_salary_2 set employee_id=96 where id=39;
update employee_salary_2 set employee_id=91 where id=40;

select * from employee_salary_2;

--Table roles 

--Создать таблицу roles: id. Serial  primary key; role_name. int, not null, unique
create table roles_2(
id serial primary key,
role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30) 
alter table roles_2 alter column role_name type varchar (30); 

--Наполнить таблицу roles 20 строками
insert into roles_2(role_name) 
values ('Junior Python developer'), 
       ('Middle Python developer'),
       ('Senoir Python developer'),
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


select * from roles_2;

--Table roles_employee

--Создать таблицу roles_employee: id. Serial  primary key; employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id); role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee_2(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees_2 (id), 
foreign key (role_id)
references roles_2 (id)
); 

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee_2(employee_id, role_id)
values (1, 2),
       (5, 1),
       (7, 3),
       (8, 4),
       (9, 5),
       (10, 6),
       (11, 7),
       (12, 8),
       (13, 9),
       (14, 6),
       (15, 3),
       (16, 2), 
       (17, 3),
       (18, 6),
       (19, 9),
       (20, 2),
       (21, 7),
       (22, 6),
       (23, 5),
       (24, 4),
       (25, 2),
       (26, 2),
       (27, 8),
       (28, 20),
       (29, 19),
       (30, 18),
       (31, 17),
       (32, 16),
       (33, 15),
       (34, 14),
       (35, 13),
       (36, 12),
       (37, 11),
       (38, 10),
       (39, 9),
       (40, 8); 

select * from roles_employee_2; 




