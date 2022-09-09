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


## Aggregate Functions 
# Find the number of distinct country names in the customers table.

