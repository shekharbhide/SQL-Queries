use employeeDB

-- Q1. find duplicates in a given table
select * from emp

select emp_id, count(emp_id)
from emp
group  by emp_id
having COUNT(1) > 1;

-- Q2. how to delete duplicates 
select * from emp;

with cte as 
( select *, ROW_NUMBER() over( PARTITION by emp_id order by emp_id) 
	as rn from emp )
delete from cte where rn > 1

-- Q.3 difference between  union and union all
select

