--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
select employees_2.employee_name , salary_2.monthly_salary
from employees_2 join salary_2
on employees_2.id = salary_2.id;

-- Вывести всех работников у которых ЗП меньше 2000
select employees_2.employee_name , salary_2.monthly_salary
from employees_2 join salary_2
on employees_2.id = salary_2.id
where monthly_salary < 2000;

--Найти всех работников кому не начислена ЗП.
select employees_2.employee_name, employee_salary_2.employee_id from employees_2
left join employee_salary_2 
on employees_2.id = employee_salary_2.employee_id 
where employee_salary_2.salary_id is null;

-- Вывести имена и должность всех QA инженеров
select employees_2.employee_name , roles_2.role_name
from employees_2 join roles_2 
on employees_2.id=roles_2.id 
where "role_name" like '%QA%';

--Вывести всех работников с названиями их должности
select employees_2.employee_name , roles_2.role_name 
from roles_2 join employees_2 
on roles_2.id = employees_2.id; 

--Вывести имена и должность только Java разработчиков
select employees_2.employee_name , roles_2.role_name 
from roles_2 join employees_2 
on roles_2.id = employees_2.id 
where role_name like '%Java developer%';

--Вывести имена и должность только Python разработчиков
select employees_2.employee_name , roles_2.role_name 
from roles_2 join employees_2 
on roles_2.id = employees_2.id 
where role_name like '%Python developer%';

--Вывести имена и должность ручных QA инженеров
select employees_2.employee_name , roles_2.role_name 
from roles_2  join employees_2 
on roles_2.id = employees_2.id 
where role_name like '%Manual QA engineer%'; 

--Вывести имена и должность автоматизаторов QA
select employees_2.employee_name , roles_2.role_name 
from roles_2  join employees_2 
on roles_2.id = employees_2.id 
where role_name like '%Automation QA engineer%';

--Вывести имена и зарплаты Junior специалистов
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id) 
join roles_2 on employees_2.id = roles_2.id) 
where role_name like '%Junior%';

--Вывести имена и зарплаты Middle специалистов
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name 
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id)
join roles_2 on employees_2.id = roles_2.id) 
where role_name like '%Middle%'; 

--Вывести имена и зарплаты Senior специалистов
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name 
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id)
join roles_2 on employees_2.id = roles_2.id)
where role_name like '%Senior%'; 

--Вывести зарплаты Java разработчиков
select salary_2.monthly_salary , roles_2.role_name 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%Java developer%';

-- Вывести зарплаты Python разработчиков
select salary_2.monthly_salary , roles_2.role_name 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%Python developer%';

--Вывести имена и зарплаты Junior Python разработчиков
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name 
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id)
join roles_2 on employees_2.id = roles_2.id)
where role_name like '%Junior Python developer%';

--Вывести имена и зарплаты Middle JS разработчиков
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name 
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id)
join roles_2 on employees_2.id = roles_2.id)
where role_name like '%Middle JavaScript developer%';

--Вывести имена и зарплаты Senior Java разработчиков
select employees_2.employee_name , salary_2.monthly_salary , roles_2.role_name 
from ((employees_2 
join salary_2 on employees_2.id = salary_2.id)
join roles_2 on employees_2.id = roles_2.id)
where role_name like '%Senior Java developer%';

--Вывести зарплаты Junior QA инженеров
select salary_2.monthly_salary , roles_2.role_name 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%Junior%QA%';


select salary_2.monthly_salary , roles_2.role_name , employee_salary_2.salary_id 
from ((salary_2 
join roles_2 on salary_2.id = roles_2.id)
join employee_salary_2 on salary_2.id = employee_salary_2.id)
where role_name like '%Junior%QA%';

--Вывести среднюю зарплату всех Junior специалистов
select avg (salary_2.monthly_salary) 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%Junior%';


-- Вывести сумму зарплат JS разработчиков
select sum (salary_2.monthly_salary) 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%Java%Script%';

--Вывести минимальную ЗП QA инженеров
select min (salary_2.monthly_salary) 
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%QA%';

--Вывести максимальную ЗП QA инженеров
select max (salary_2.monthly_salary)
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%QA%';

--Вывести количество QA инженеров
select count (roles_2.role_name)
from roles_2 join roles_employee_2 
on roles_2.id = roles_employee_2.employee_id 
where role_name like '%QA%';

--Вывести количество Middle специалистов
select count (roles_2.role_name)
from roles_2 join roles_employee_2 
on roles_2.id = roles_employee_2.employee_id 
where role_name like '%Middle%';

--Вывести количество разработчиков
select count (roles_2.role_name)
from roles_2 join roles_employee_2 
on roles_2.id = roles_employee_2.employee_id 
where role_name like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков
select sum (salary_2.monthly_salary)
from salary_2 join roles_2 
on salary_2.id = roles_2.id 
where role_name like '%developer%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees_2.employee_name , roles_2.role_name , salary_2.monthly_salary 
from ((employees_2
join roles_2 on employees_2.id = roles_2.id)
join salary_2 on employees_2.id = salary_2.id)
order by monthly_salary asc;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees_2.employee_name , roles_2.role_name , salary_2.monthly_salary 
from ((employees_2
join roles_2 on employees_2.id = roles_2.id)
join salary_2 on employees_2.id = salary_2.id)
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees_2.employee_name , roles_2.role_name , salary_2.monthly_salary 
from ((employees_2 
join roles_2 on employees_2.id = roles_2.id)
join salary_2 on employees_2.id = salary_2.id)
where monthly_salary < 2300
order by monthly_salary asc;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees_2.employee_name , roles_2.role_name , salary_2.monthly_salary 
from ((employees_2 
join roles_2 on employees_2.id = roles_2.id)
join salary_2 on employees_2.id = salary_2.id)
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary asc;



























--HW 