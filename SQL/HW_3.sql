--SQL HomeWork 2. Joins
--
--����������� � 
--Host: 159.69.151.133
--Port: 5056
--DB: ����������� � ��� ������� ��� ������ DDL ��������
--User: ����������� � ��� ������������� ����� ������ DDL ��������
--Pass: 123
--
--
-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.id, employees.employee_name, salary.monthly_salary
from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employees.employee_name, employees.id, employee_name , monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employees.id, employees.employee_name , salary.monthly_salary
from employees 
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employees.id, employee_name , salary.monthly_salary
from employees 
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000; 

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employees.id, employees.employee_name, salary.monthly_salary
from employees
full join public.salary on employees.id = salary.id 
full join employee_salary on employee_salary.salary_id =  salary.id 
where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.

select roles_employee.employee_id, employees.employee_name, role_id, role_name
from roles_employee 
join roles on roles_employee.role_id = roles.id     
join employees on employees.id = roles_employee.employee_id;

-- 7. ������� ����� � ��������� ������ Java �������������.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

-- 10. ������� ����� � ��������� ������ QA ���������.

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA

select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA engineer%';

-- 12. ������� ����� � �������� Junior ������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������\

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java developer%';

-- 16. ������� �������� Python �������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Python developer%';

-- 17. ������� ����� � �������� Junior Python �������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python developer%';

-- 18. ������� ����� � �������� Middle JS �������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript developer%';

-- 19. ������� ����� � �������� Senior Java �������������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior Java developer%';

-- 20. ������� �������� Junior QA ���������

select employees.employee_name, roles_employee.employee_id, roles.role_name, salary.monthly_salary
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior QA engineer%';

-- 21. ������� ������� �������� ���� Junior ������������

select avg(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������

select sum(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id 
where role_name like '%JavaScript developer%';

-- 23. ������� ����������� �� QA ���������

select min(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer%';

-- 24. ������� ������������ �� QA ���������

select max(monthly_salary)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer%';

-- 25. ������� ���������� QA ���������

select count(public.roles_employee.employee_id)
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.

select count(public.roles_employee.employee_id)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

-- 27. ������� ���������� �������������

select count(public.roles_employee.employee_id)
from employees 
full join roles_employee on roles_employee.employee_id = employees.id 
full join roles on roles.id = roles_employee.role_id
full join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
full join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary)
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
order by monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employees.employee_name, roles.role_name, salary.monthly_salary, roles_employee.role_id
from employees 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300 
order by monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employees.employee_name, roles.role_name, salary.monthly_salary, roles_employee.role_id
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300 
order by monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

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