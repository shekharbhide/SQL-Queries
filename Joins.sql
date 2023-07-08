-- Create the customer table
create database db_for_joins;

CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address_id INT
);

-- Create the payment table
CREATE TABLE payment (
  customer_id INT,
  amount DECIMAL(10, 2),
  mode VARCHAR(50),
  payment_date DATE
);

-- Create the address table
CREATE TABLE address (
  address_id INT PRIMARY KEY,
  address VARCHAR(100),
  city_id INT,
  postal_code VARCHAR(10),
  phone VARCHAR(20)
);

-- Create the country table
CREATE TABLE country (
  city_id INT PRIMARY KEY,
  city VARCHAR(50),
  country VARCHAR(50)
);

-- Insert sample data into customer table
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES
  (1, 'John', 'Doe', 1),
  (2, 'Jane', 'Smith', 2),
  (8, 'Michael', 'Johnson', 3),
  (9, 'Emily', 'Davis', 15),
  (5, 'David', 'Wilson', 20);

-- Insert sample data into payment table
INSERT INTO payment (customer_id, amount, mode, payment_date)
VALUES
  (1, 100.00, 'Credit Card', '2023-06-01'),
  (20, 50.00, 'PayPal', '2023-06-02'),
  (3, 75.50, 'Cash', '2023-06-03'),
  (8, 200.00, 'Credit Card', '2023-06-04'),
  (5, 80.25, 'PayPal', '2023-06-05');

-- Insert sample data into address table
INSERT INTO address (address_id, address, city_id, postal_code, phone)
VALUES
  (20, '123 Main St', 111, '12345', '555-1234'),
  (2, '456 Elm St', 222, '67890', '555-5678'),
  (3, '789 Oak St', 333, '34567', '555-9012'),
  (4, '321 Pine St', 444, '89012', '555-3456'),
  (50, '654 Maple St', 555, '23456', '555-7890');

-- Insert sample data into country table
INSERT INTO country (city_id, city, country)
VALUES
  (111, 'New York City', 'United States'),
  (222, 'Los Angeles', 'United States'),
  (250, 'London', 'United Kingdom'),
  (455, 'Paris', 'France'),
  (555, 'Tokyo', 'Japan');


  use db_for_joins

  select * from customer;
  select  * from payment;
  /* INNER JOIN */
  select *  
  from customer as c
  inner join payment as p  
  on c.customer_id = p.customer_id;

  /* LEFT JOIN */
  select * from customer;
  select  * from payment;
  select * 
  from customer as c
  left join payment as p
  on c.customer_id = p.customer_id;

  /* RIGHT JOIN */
  select * from customer;
  select  * from payment;

  select * 
  from customer as c
  right join payment as p
  on c.customer_id = p.customer_id;

  /*  FULL JOIN */
  select * from customer;
  select  * from payment;

  select * 
  from customer as c
  full outer join payment as p
  on c.address_id=p.customer_id;


