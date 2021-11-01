--SQL_DDL_Joins
--
--Таблица employees
--
--1) Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--2) Наполнить таблицу employee 70 строками.

create table employees (
	id Serial primary key,
	employee_name varchar (50) not null
);

select * from employees;

insert into employees (id, employee_name) values 
	(default, 'Sergei Petrov');
insert into employees (id, employee_name) values
	(default, 'Arina Petrova');
insert into employees (id, employee_name) values
	(default, 'Milana Petrova');
insert into employees (id, employee_name) values
	(default, 'Katy Petrova');
insert into employees (id, employee_name) values
	(default, 'Elena Cat');
insert into employees (id, employee_name) values
	(default, 'Liam Williams');
insert into employees (id, employee_name) values
	(default, 'Joseph Rivera');
insert into employees (id, employee_name) values
	(default, 'Alina Lipova');
insert into employees (id, employee_name) values
	(default, 'Lena Golubeva');
insert into employees (id, employee_name) values
	(default, 'Aleksander Petrov');
insert into employees (id, employee_name) values
	(default, 'Ura Lokochenko');
insert into employees (id, employee_name) values
	(default, 'Sasha Shipilove');
insert into employees (id, employee_name) values
	(default, 'Alex Cvetkov');
insert into employees (id, employee_name) values
	(default, 'Arina Petrova');
insert into employees (id, employee_name) values
	(default, 'Rina Kova');
insert into employees (id, employee_name) values
	(default, 'Vadim Ksendzov');
insert into employees (id, employee_name) values
	(default, 'Kate D');
insert into employees (id, employee_name) values
	(default, 'Dmitry Homez');
insert into employees (id, employee_name) values
	(default, 'Andrew Vlasov');
insert into employees (id, employee_name) values
	(default, 'Yevhen Romanov');
insert into employees (id, employee_name) values
	(default, 'Diana Kot');
insert into employees (id, employee_name) values
	(default, 'Tatyana');
insert into employees (id, employee_name) values
	(default, 'Artsiom QA');
insert into employees (id, employee_name) values
	(default, 'Tsvetelina St');
insert into employees (id, employee_name) values
	(default, 'Pavel Zuyonok');
insert into employees (id, employee_name) values
	(default, 'Julia');
insert into employees (id, employee_name) values
	(default, 'Tatiana Tokareva');
insert into employees (id, employee_name) values
	(default, 'Olya Samuseva');
insert into employees (id, employee_name) values
	(default, 'Alexander Push');
insert into employees (id, employee_name) values
	(default, 'Anastasiya');
insert into employees (id, employee_name) values
	(default, 'Nataliya Kavaliova');
insert into employees (id, employee_name) values
	(default, 'Ferrum');
insert into employees (id, employee_name) values
	(default, 'Alina');
insert into employees (id, employee_name) values
	(default, 'Roman');
insert into employees (id, employee_name) values
	(default, 'Ekateryna Ruslanovna');
insert into employees (id, employee_name) values
	(default, 'Irina Chernysheva');
insert into employees (id, employee_name) values
	(default, 'Aleks Obvintcev');
insert into employees (id, employee_name) values
	(default, 'liliya Cherry');
insert into employees (id, employee_name) values
	(default, 'Vitalika');
insert into employees (id, employee_name) values
	(default, 'Katerina');
insert into employees (id, employee_name) values
	(default, 'Tamara Yakubovska');
insert into employees (id, employee_name) values
	(default, 'Aleksandra Dolzhenko');
insert into employees (id, employee_name) values
	(default, 'Ekaterina Weber');
insert into employees (id, employee_name) values
	(default, 'Nadine Chernikova');
insert into employees (id, employee_name) values
	(default, 'Anastasia');
insert into employees (id, employee_name) values
	(default, 'Dmitry');
insert into employees (id, employee_name) values
	(default, 'Zhanna Podshivalova');
insert into employees (id, employee_name) values
	(default, 'Nikolaj Fedotov');
insert into employees (id, employee_name) values
	(default, 'Vlas Mastyk?sh');
insert into employees (id, employee_name) values
	(default, 'Valeria Holovchyk');
insert into employees (id, employee_name) values
	(default, 'NadiN');
insert into employees (id, employee_name) values
	(default, 'Roman P?nar');
insert into employees (id, employee_name) values
	(default, 'Kabeh Zaur');
insert into employees (id, employee_name) values
	(default, 'Natalie Zolina');
insert into employees (id, employee_name) values
	(default, 'Oleg Keldanovitch');
insert into employees (id, employee_name) values
	(default, 'Oleg Sirotkin');
insert into employees (id, employee_name) values
	(default, 'Kirill Pavluchenko');
insert into employees (id, employee_name) values
	(default, 'Rezeda');
insert into employees (id, employee_name) values
	(default, 'Sergey Molchun');
insert into employees (id, employee_name) values
	(default, 'Veronika Baraboi');
insert into employees (id, employee_name) values
	(default, 'Alexandr Kalinkin');
insert into employees (id, employee_name) values
	(default, 'Aliaksandra Laurenava');
insert into employees (id, employee_name) values
	(default, 'Tanya Moroz');
insert into employees (id, employee_name) values
	(default, 'Olga Prokopenko');
insert into employees (id, employee_name) values
	(default, 'Hanna');
insert into employees (id, employee_name) values
	(default, 'Kristina');
insert into employees (id, employee_name) values
	(default, 'SilverWolf');
insert into employees (id, employee_name) values
	(default, 'Sveta Petrova');
insert into employees (id, employee_name) values
	(default, 'Nadia');
insert into employees (id, employee_name) values
	(default, 'Margi Nal');

select * from employees;

--==============================================

--Таблица salary
--
--3) Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--4) Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500

create table salary (
	id Serial  primary key,
	monthly_salary varchar (30) not null
);

select * from salary;

alter table salary 
alter column monthly_salary type int
using monthly_salary::integer;

insert into salary (id, monthly_salary) values
	(default, 1000);
insert into salary (id, monthly_salary) values
	(default, 1100);
insert into salary (id, monthly_salary) values
	(default, 1200);
insert into salary (id, monthly_salary) values
	(default, 1300);
insert into salary (id, monthly_salary) values
	(default, 1400);
insert into salary (id, monthly_salary) values
	(default, 1500);
insert into salary (id, monthly_salary) values
	(default, 1600);
insert into salary (id, monthly_salary) values
	(default, 1700);
insert into salary (id, monthly_salary) values
	(default, 1800);
insert into salary (id, monthly_salary) values
	(default, 1900);
insert into salary (id, monthly_salary) values
	(default, 2000);
insert into salary (id, monthly_salary) values
	(default, 2100);
insert into salary (id, monthly_salary) values
	(default, 2200);
insert into salary (id, monthly_salary) values
	(default, 2300);
insert into salary (id, monthly_salary) values
	(default, 2400);
insert into salary (id, monthly_salary) values
	(default, 2500);

select * from salary;

--============================================

--Таблица employee_salary
--
--5) Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--6) Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary (id, employee_id, salary_id) values
	(default, 2, 4);
select * from employee_salary;	
insert into employee_salary (id, employee_id, salary_id) values
	(default, 4, 10);
select * from employee_salary;	
insert into employee_salary (id, employee_id, salary_id) values
	(default, 1, 15);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 9, 3);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 20, 9);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 30, 1);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 13, 16);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 40, 7);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 35, 6);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 17, 5);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 19, 11);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 21, 13);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 42, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 47, 3);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 55, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 67, 1);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 44, 7);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 15, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 5, 11);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 3, 6);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 7, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 48, 4);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 32, 1);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 70, 7);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 28, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 29, 9);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 43, 16);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 63, 12);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 65, 14);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 37, 3);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 71, 1);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 72, 5);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 73, 2);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 74, 8);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 75, 6);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 76, 16);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 77, 11);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 78, 7);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 79, 15);
select * from employee_salary;
insert into employee_salary (id, employee_id, salary_id) values
	(default, 80, 5);
select * from employee_salary;

--=============================================================

--Таблица roles
--
--7) Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--8) Поменять тип столба role_name с int на varchar(30)
--9) Наполнить таблицу roles 20 строками:

create table roles (
	id Serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles
alter column role_name type varchar(30);

select * from roles;

insert into roles (id, role_name) values
	(default, 'Junior Python developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Middle Python developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Senior Python developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Junior Java developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Middle Java developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Senior Java developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Junior JavaScript developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Middle JavaScript developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Senior JavaScript developer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Junior Manual QA engineer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Middle Manual QA engineer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Senior Manual QA engineer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Project Manager');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Designer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'HR');
select * from roles;
insert into roles (id, role_name) values
	(default, 'CEO');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Sales manager');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Junior Automation QA engineer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Middle Automation QA engineer');
select * from roles;
insert into roles (id, role_name) values
	(default, 'Senior Automation QA engineer');
select * from roles;

--=============================================

--Таблица roles_employee
--
--10) Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11) Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
  id serial primary key,
  employee_id int not null unique,
  role_id int not null,
  FOREIGN KEY (employee_id)
      REFERENCES employees (id),
  FOREIGN KEY (role_id)
      REFERENCES roles (id)
);

select * from roles_employee;

insert into roles_employee (id, employee_id, role_id) values
	(default, 7, 2);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 20, 4);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 3, 9);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 5, 13);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 23, 4);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 11, 2);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 10, 9);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 22, 13);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 21, 3);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 34, 4);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 6, 7);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 12, 20);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 17, 19);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 1, 5);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 37, 1);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 43, 12);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 27, 11);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 53, 8);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 9, 15);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 70, 2);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 57, 6);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 14, 18);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 47, 17);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 15, 10);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 67, 16);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 63, 1);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 33, 14);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 8, 11);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 4, 7);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 2, 13);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 13, 20);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 30, 1);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 29, 5);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 65, 7);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 19, 10);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 59, 18);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 26, 17);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 66, 2);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 46, 9);
select * from roles_employee;
insert into roles_employee (id, employee_id, role_id) values
	(default, 25, 7);
select * from roles_employee;

--==========================================================





