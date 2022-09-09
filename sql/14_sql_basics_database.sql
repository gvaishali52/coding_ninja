show tables;
use classicmodels;
select * from employees limit 10;

# Get OrderNumber from OrderDetails Tables 
# where quantityOrdered is equal to 59 and priceEach is greater than 100

SELECT OrderNumber FROM OrderDetails
WHERE quantityOrdered = 59 AND
	priceEach >100;
    
# Given below are the details of customers table. It is one of the 
# tables in classicmodels database. customers stores customer’s data.
# With SQL, how do you select all the records from a table named "customers" 
# where the "contactFirstName" is "Diego" and the "contactLastName" is "Freyre"?

SELECT * FROM customers
WHERE contactFirstName = 'Diego' AND 
contactLastName = 'Freyre';


# Aggregate Functions 
# Find the number of distinct country names in the customers table.

SELECT count(distinct country) FROM customers;

# From Table-orderdetails get the number of records 
# where quantityOrdered is greater than 50.
# Note: Answer should be in Integer

SELECT count(orderNumber) from orderdetails
WHERE quantityOrdered > 50;

-- Aggregate Functions
-- Get sum of all payments from
-- i) 2002-01-01 to 2003-01-01
-- ii) 2003-01-01 to 2004-01-01
-- iii) 2004-01-01 to 2005-01-01
-- Which time range has the maximum payment?

SELECT sum(amount) FROM payments
WHERE paymentDate between '2003-01-01' and '2002-01-01';

SELECT sum(amount) FROM payments
WHERE paymentDate > '2003-01-01' and paymentDate< '2004-01-01';

SELECT sum(amount) FROM payments
WHERE paymentDate between '2004-01-01' and '2005-01-01';

select * from payments;


-- Count the total number (quantity in stock) of motorcycles in products table
-- Note: Answer should be in Integer

SELECT SUM(quantityInStock) from products
where productLine = 'motorcycles';

SELECT * from products;

-- Update MSRP of motorcycles to 100 in the products table and 
-- get the sum of MSRP of motorcycles.
-- Note: Answer should be in Integer

UPDATE products
SET MSRP = 100
WHERE productLine = 'motorcycles';

select sum(MSRP) from products
WHERE productLine = 'motorcycles';











