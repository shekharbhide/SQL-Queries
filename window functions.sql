-- WINDOW FUNCTIONS
use [employeeDB]

CREATE TABLE sales (
    id INT,
    product VARCHAR(50),
    region VARCHAR(50),
    revenue DECIMAL(10, 2)
);

INSERT INTO sales (id, product, region, revenue)
VALUES
    (1, 'Product1', 'East', 100),
    (2, 'Product2', 'West', 200),
    (3, 'Product1', 'East', 150),
    (4, 'Product2', 'West', 300),
    (5, 'Product1', 'West', 250),
    (6, 'Product2', 'East', 175);


-- 
SELECT region, 
SUM(revenue) OVER (PARTITION BY region) AS total_revenue
FROM sales;



select *,
round(AVG(revenue) OVER(PARTITION BY region ORDER BY id),2)
from sales

SELECT id, product, region, revenue, RANK() OVER (PARTITION BY region ORDER BY revenue DESC) AS rank
FROM sales;
