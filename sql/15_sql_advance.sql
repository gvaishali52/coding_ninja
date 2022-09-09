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



















