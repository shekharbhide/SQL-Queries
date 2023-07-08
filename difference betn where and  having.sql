use employeeDB;

create table emp
(emp_id int,
emp_name varchar(100),
department_id int,
salary int,
manager_id int);

insert into emp
values 
(1,'Ankit',100,10000,4),
(2,'Mohit',100,15000,5),
(3,'Vikas',100,10000,4),
(4,'Rohit',100,5000,2),
(5,'Mudit',200,12000,6),
(6,'Agam',200,12000,2),
(7,'Sanjay',200,9000,2),
(8,'Ashish',200,5000,2)

select * from emp
-- WHERE CLAUSE - 
select * from emp
where salary > 9000;

-- Having Clause
select department_id,AVG(salary)
from emp
group by department_id
having AVG(salary) > 9500

-- use of both in the query
select department_id,AVG(salary)
from emp
where salary >= 10000
group by department_id
having AVG(salary) >= 12000
