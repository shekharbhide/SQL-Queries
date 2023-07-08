create database paymentss
use paymentss

create table payment(
	customer_id int primary key,
	amount int ,
	mode varchar(20),
	payment_date date
);

insert into payment values(1,60,'cash','2020-09-24')
insert into payment values
(8,110,'cash','2021-01-26'),
(10,70,'mobile payment','2021-02-28'),
(11,80,'cash','2021-03-01'),
(2,500,'credit card','2020-04-27');

create table customer(
	customer_id int primary key,
	first_name varchar(20),
	last_name varchar(20),
	address_id int
)

insert into customer values
(1,'Mary','smith',5),
(3,'linda','williams',7),
(4,'barbara','jones',8),
(2,'Madan','Mohan',6);


select * from payment

select AVG(amount) as 'Avg amount' from payment

select *
from payment where amount> 164

-- creating a dynamic approach using SUBQUERY
select *
from payment 
where amount > ( SELECT AVG(amount) FROM payment)

-- another way using IN operator
select *
from payment 
where amount IN (SELECT AVG(amount) FROM payment)

select * from customer


select customer_id,amount,mode
from payment
where customer_id IN (select customer_id from customer)

-- SUBQUERY using  **	EXISTS ** operator
select customer_id,amount
from payment
where amount >100

select *
from customer c
WHERE EXISTS(select customer_id,amount
			from payment p
			WHERE p.customer_id = c.customer_id
			AND amount>100
			)

