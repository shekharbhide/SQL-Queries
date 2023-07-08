use [employeeDB]

create table products (
	order_date  date,
	sales int
);

insert into products(order_date,sales) values
('2022-01-01',20), ('2022-01-02',32), ('2023-02-08',45), ('2022-02-04',31),
('2023-03-21',33), ('2023-03-06',19), ('2022-04-07',21), ('2022-04-22',10);

select * from products

select year(order_date) as years , month(order_date) as months,
SUM(sales) as totalSales from products
group by  YEAR(order_date) ,MONTH(order_date)
order by totalSales desc;



CREAT	E TABLE Applicationss (
candidate_id int,
skills varchar(50));

INSERT INTO Applicationss(candidate_id,skills)
VALUES
(101, 'Power BI'), (101, 'Python'), (101, 'SQL'), (102, 'Tableau'), (102, 'SQL'),
(108, 'Python'), (108, 'SQL'), (108, 'Power BI'), (104, 'Python'), (104, 'Excel')

select * from Applicationss;

select candidate_id,COUNT(skills) as skilllcount
from Applicationss
where skills in ('power bi','python','sql')
group by candidate_id
having count(skills) = 3
order by candidate_id



