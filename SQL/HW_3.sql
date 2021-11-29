--SQL HomeWork 2. Joins
--
--Подключится к 
--Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123
--
--
-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.id, employees.employee_name, salary.monthly_salary
from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, employees.id, employee_name , monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.id, employees.employee_name , salary.monthly_salary
from employees 
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.id, employee_name , salary.monthly_salary
from employees 
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000; 

-- 5. Найти всех работников кому не начислена ЗП.

select employees.id, employees.employee_name, salary.monthly_salary
from employees
full join public.salary on employees.id = salary.id 
full join employee_salary on employee_salary.salary_id =  salary.id 
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.

select roles_employee.employee_id, employees.employee_name, role_id, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id     
join employees on employees.id = roles_employee.employee_id;

-- 7. Вывести имена и должность только Java разработчиков.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA инженеров.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA engineer%';

-- 12. Вывести имена и зарплаты Junior специалистов

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов\

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python developer%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript developer%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior QA engineer%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id 
where role_name like '%JavaScript developer%';

-- 23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer%';

-- 24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer%';

-- 25. Вывести количество QA инженеров

select count(public.roles_employee.employee_id)
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.

select count(public.roles_employee.employee_id)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков

select count(public.roles_employee.employee_id)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
order by monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees.employee_name, roles.role_name, salary.monthly_salary, roles_employee.role_id
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300 
order by monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees.employee_name, roles.role_name, salary.monthly_salary, roles_employee.role_id
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300 
order by monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees.employee_name, roles.role_name, salary.monthly_salary, roles_employee.role_id
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where monthly_salary in(1100, 1500, 2000) 
order by monthly_salary asc;

select employee_name, monthly_salary 
from salary
join employees on salary.id = employees.id 
where monthly_salary in(1100);