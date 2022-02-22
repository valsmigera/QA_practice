select employees.employee_name, salary.monthly_salary	--1
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id;

select employees.employee_name, salary.monthly_salary	--2
from employees 
join employee_salary 
on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

select salary.monthly_salary	--3
from  salary
join employee_salary
on employee_salary.salary_id = salary.id
full join employees
on employee_salary.employee_id = employees.id 
where employees.employee_name is null;

select salary.monthly_salary		--4
from  salary
join employee_salary
on employee_salary.salary_id = salary.id
full join employees
on employee_salary.employee_id = employees.id 
where employees.employee_name is null
and salary.monthly_salary < 2000;

select employees.id, employee_name		--5
from  employees
left join employee_salary
on employee_salary.employee_id = employees.id
full join salary
on employee_salary.salary_id = salary.id 
where employee_salary.salary_id is null;

select employees.id, employees.employee_name, roles.role_name 		--6
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id;

select employees.id, employees.employee_name, roles.role_name 		--7
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer%';

select employees.id, employees.employee_name, roles.role_name 		--8
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer%';

select employees.id, employees.employee_name, roles.role_name 		--9
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';

select employees.id, employees.employee_name, roles.role_name 		--10
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA engineer%';

select employees.id, employees.employee_name, roles.role_name 		--11
from employees
join roles_employee 
on roles_employee.employee_id = employees.id
join roles 
on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA engineer%';

select employees.employee_name, salary.monthly_salary 		--12
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Junior%');

select employees.employee_name, salary.monthly_salary 		--13
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Middle%');

select employees.employee_name, salary.monthly_salary 		--14
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Senior%');

select salary.monthly_salary 	--15
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Java%');

select salary.monthly_salary 	--16
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Python%');

select employees.employee_name, salary.monthly_salary 	--17
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Junior Python%');

select employees.employee_name, salary.monthly_salary 		--18
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Middle JavaScript%');

select employees.employee_name, salary.monthly_salary 		--19
from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id =salary.id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like'%Senior Java%');

select salary.monthly_salary 	--20
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%Junior QA%');

select AVG(salary.monthly_salary) as avg_salary		--21
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%Junior%');

select SUM(salary.monthly_salary) as sum_salary		--22
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%Java Script%');

select MIN(salary.monthly_salary) as min_salary  --23
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%QA%');

select MAX(salary.monthly_salary) as max_salary		--24
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%QA%');

select COUNT(roles_employee.role_id) as count_QA		--25
from roles_employee
where role_id in
(select id 
from roles where role_name like '%QA%');

select COUNT(roles_employee.role_id) as count_middle	--26
from roles_employee
where role_id in
(select id 
from roles where role_name like '%Middle%');

select COUNT(roles_employee.role_id) as count_dev		--27
from roles_employee
where role_id in
(select id 
from roles where role_name like '%developer%');

select SUM(salary.monthly_salary) as sum_salary_dev		--28
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.employee_id = employees.id
where roles_employee.role_id in ( 
select id from roles
where role_name like '%developer%');

select e.employee_name, r.role_name, salary.monthly_salary		--29
from employees e 
join employee_salary es 
on es.employee_id = e.id 
join salary 
on salary.id = es.salary_id 
join roles_employee re 
on re.employee_id = e.id
join roles r 
on r.id = re.role_id 
order by salary.monthly_salary

select e.employee_name, r.role_name, salary.monthly_salary		--30
from employees e 
join employee_salary es 
on es.employee_id = e.id 
join salary 
on salary.id = es.salary_id 
join roles_employee re 
on re.employee_id = e.id
join roles r 
on r.id = re.role_id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary;

select e.employee_name, r.role_name, salary.monthly_salary		--31
from employees e 
join employee_salary es 
on es.employee_id = e.id 
join salary 
on salary.id = es.salary_id 
join roles_employee re 
on re.employee_id = e.id
join roles r 
on r.id = re.role_id 
where salary.monthly_salary<2300
order by salary.monthly_salary;

select e.employee_name, r.role_name, salary.monthly_salary		--32
from employees e 
join employee_salary es 
on es.employee_id = e.id 
join salary 
on salary.id = es.salary_id 
join roles_employee re 
on re.employee_id = e.id
join roles r 
on r.id = re.role_id 
where salary.monthly_salary IN (1100,1500,2000)
order by salary.monthly_salary