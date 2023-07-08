use employeeDB;


/*CREATE TABLE*/
create table employee_info(
	empId int primary key,
	empName varchar(20) NOT NULL,
	empSalary decimal(10,2) not null,
	job varchar(20),
	phone varchar(50),
	deptId int,
);

/*INSERT*/
insert into employee_info values
(2,'john',30000,'data scintints','7821980249',15),
(3,'sanket',20000,'developer','9921980249',14);


insert into employee_info(empId,empName,empSalary) values
(4,'smith',25000),
(6,'smash',15000);

/*SELECT*/
select * from employee_info;
select empName,empSalary,job from employee_info;


/*update */
update employee_info 
set empSalary = empSalary+10000;

update employee_info
set job='tester'
where empName='smith';


update employee_info
set phone='2390345678',deptId=20
where empName='smith';

update employee_info 
set empName='john deo' 
where empName='john';

/*DELETE*/
delete from employee_info; /*delete all records*/
select * from employee_info;

delete from employee_info where deptId=20;



/* ORDER BY */
select empName from employee_info 
order by empName;

select * from employee_info 
order by empName;

select * from employee_info 
order by empSalary asc;

/*	WHERE CLAUSE */
/*with select*/
select * from employee_info where empSalary <= 30000;

/* with update */
update employee_info set empName='ronny' where empId=5;
update employee_info set empSalary +=20000 where empId=5;

select * from employee_info ;

/* with delete */

delete from employee_info where empName = 'smash';


/* Aggregation funcions */

select sum(empSalary) as totalSalary from employee_info;

select max(empSalary) as maxSalary from employee_info;

select min(empSalary) as minSalary from employee_info;

select AVG(empSalary) from employee_info;

select COUNT(empName) from employee_info;

select * from employee_info where job='developer' and empSalary<=30000;
select * from employee_info where job='developer' or job='data engineer';

select * from employee_info where empName like '_v';
select * from employee_info where empName like '%r';
select * from employee_info where deptId like '1_';

SELECT * FROM employee_info WHERE empName LIKE 's%';
SELECT * FROM employee_info WHERE job LIKE '%developer%';
SELECT * FROM employee_info WHERE phone LIKE '7%';

alter table employee_info add empAddress varchar(50);

update employee_info
set empAddress = 'Nashik' 
where empId=1;

update employee_info
SET empAddress = 'Yurope'
where empId=2;
