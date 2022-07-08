
       
--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
     
select employees.employee_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.employee_name, salary.monthly_salary from employees
right join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.employee_name, salary.monthly_salary from employees
right join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null and monthly_salary < 2000;

--Найти всех работников кому не начислена ЗП.

select id, employee_name from employees 
where id not in (select employee_id from employee_salary);

--Вывести всех работников с названиями их должности.

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id;

--Вывести имена и должность только Java разработчиков.

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Java %';

--Вывести имена и должность только Python разработчиков.

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Python%';

--Вывести имена и должность всех QA инженеров.

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%QA engineer%';

--Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Manual QA engineer%';

--Вывести имена и должность автоматизаторов QA

select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Automation QA engineer%';

--Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Junior%';

--Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Middle%';

--Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Senior%';

--Вывести зарплаты Java разработчиков

select monthly_salary, role_name from salary s 
join employee_salary es  on s.id = es.salary_id 
join roles_employee re on re.id = es.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Java%';

--Вывести зарплаты Python разработчиков

select monthly_salary, role_name from salary s 
join employee_salary es  on s.id = es.salary_id 
join roles_employee re on re.id = es.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Python%';

--Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Junior Python%';

--Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Middle JavaScript%';

--Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where role_name like '%Senior JavaScript%';

--Вывести зарплаты Junior QA инженеров

select monthly_salary, role_name from salary s 
join employee_salary es  on s.id = es.salary_id 
join roles_employee re on re.id = es.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Junior%QA%';

--Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) as avg_salary_Junior from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Junior%';

--Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary) as sum_JS_salary from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%JavaScript%';

--Вывести минимальную ЗП QA инженеров

select MIN(monthly_salary) as min_QA_salary from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA%';

--Вывести максимальную ЗП QA инженеров

select MAX(monthly_salary) as max_QA_salary from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA%';

--Вывести количество QA инженеров

select count(role_name) as count_qa_eng from roles_employee re 
join roles r on re.role_id = r.id
where role_name like '%QA%';

--Вывести количество Middle специалистов.

select count(role_name) as count_middle_spec from roles_employee re 
join roles r on re.role_id = r.id
where role_name like '%Middle%';

--Вывести количество разработчиков

select count(role_name) as count_developer from roles_employee re 
join roles r on re.role_id = r.id
where role_name like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков.

select SUM(monthly_salary) as sum_developer_salary from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%developer%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where monthly_salary < 2300
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, monthly_salary, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id
join roles r on re.role_id = r.id
where monthly_salary in  (1100, 1500, 2000)
order by monthly_salary;

