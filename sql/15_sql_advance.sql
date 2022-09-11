-- QuantityOrder
use classicmodels;
-- Get sum of quantityordered of each ordernumber
-- from orderdetails table and tell output of orderNumber = 10425

Select sum(quantityOrdered) from orderdetails
where orderNumber = 10425;

select orderNumber, sum(quantityOrdered) from orderdetails 
where orderNumber=10425 group by orderNumber;

-- Total Amount
-- Which productCode was ordered the most?
-- Refer to the orderdetails table for the same.

select * from orderdetails;

# quantity sum
select productCode, sum(quantityOrdered) from orderdetails
group by productCode order by sum(quantityOrdered) desc;

# total order sum
SELECT  productCode,Count(*) FROM orderdetails 
group by  productCode order by count(*) desc;


-- Sum Price
-- Get sum of price paid by customerNumber 473 on 2003-10-27 from payments table;

select sum(amount) from payments
where customerNumber = 473 and paymentDate = '2003-10-27';


-- Retrieval
-- List the productLines that has quantity in stock more than 50000. 
-- Sort the result in increasing order of quantity. Write down the 
-- name of the product Line which has the lowest quantity in stock.
-- Note: Answer should be in lowercase letters.

select * from products;

select productLine, sum(quantityInStock) from products
group by productLine order by sum(quantityInStock) ASC;

SELECT productLine,SUM(quantityInStock) FROM products 
GROUP BY productLine HAVING SUM(quantityInStock)>50000 
ORDER BY SUM(quantityInStock) ;

-- EmployeesNumber
-- Get employeeNumber of President and VP sales.

select employeeNumber,jobTitle from employees
where jobTitle in  ('President', 'VP Sales');

-- Get Details
-- Get details of those employees who don't report to President 
-- and VP sales (use employeeNumber from last result).
-- Tick subset of employeeNumbers from you result

select employeeNumber from employees
where reportsTo not in ( 1002, 1056)
order by employeeNumber;

-- Product Lines
-- Get Different productLines whose msrp is in between 50 and 90 and 
-- they are not from productLine ‘Ships’ and ‘Planes’ (Use the original products table)

select * from products;


select distinct productLine from products
where (MSRP between 50 and 90) and productLine not in ('Ships', 'Planes');



SELECT DISTINCT productLine FROM products 
WHERE MSRP BETWEEN 50 AND 90 AND productLine NOT IN ('Ships','Planes');

-- Employees
-- Get details of those employees whose first name starts with ‘L’ and reports to 1143.
-- Use the employees table for the same.

select * from employees;

select firstName, lastName from employees
where firstName like 'L%' and reportsTo = 1143;

-- Get Phone Number
-- Get phone number of customer whose customerName has 
-- ‘to-Mo’ In between the name from customers table

select phone from customers
where customerName like '%to-Mo%';

-- Atelier graphique
-- Tick the correct order numbers of 
-- 'Atelier graphique' (customer name) from orders and customer table

desc customers;
desc orders;

select orderNumber from orders o
join customers c
on o.customerNumber = c.customerNumber
where customerName = 'Atelier graphique';


-- Price Each
-- Get sum of priceEach for orderNumber 10300 
-- and customerNumber = 128 from order and orderdetails table

select sum(priceEach) from orderdetails od
join orders o
on od.orderNumber = o.orderNumber
where od.orderNumber = 10300 and customerNumber = 128;

-- Joins
-- _______ Join returns data that is common between two tables.
-- Write answer in lowercase alphabets. INNER

-- Price Each
-- Get sum of priceeach from orderdetails table for customer name 
-- ’Atelier graphique’ from customers table matching orderNumber from orders table

select sum(priceEach) from orderdetails
inner join orders
on orderdetails.orderNumber = orders.orderNumber
inner join customers
on orders.customerNumber = customers.customerNumber
where customers.customerName = 'Atelier graphique';

-- Number Of Rows
-- Number of Rows after left joining payments and customers table

-- select count* from payments p-- 

select count(*) from payments p
left join customers c
on p.customerNumber = c.customerNumber;



-- Joins
-- Send Feedback
-- __ JOIN returns all rows from the left table, 
-- even if there are no matches in the right table and 
-- __ JOIN returns all rows from the right table, even 
-- if there are no matches in the left table.



























