use employeeDB;


create table employee_info(
	empId int primary key,
	empName varchar(20) NOT NULL,
	empSalary decimal(10,2) not null,
	job varchar(20),
	phone varchar(50),
	deptId int,
);


insert into employee_info values
(2,'john',30000,'data scintints','7821980249',15),
(3,'sanket',20000,'developer','9921980249',14);

select * from employee_info;


insert into employee_info(empId,empName,empSalary) values
(4,'smith',25000),
(5,'smash',15000);

