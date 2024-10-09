##1. Write a query to list the product id, product name, and unit price of every product. This 
#time, display them in ascending order by price. 
SELECT  ProductID, ProductName, UnitPrice from products
ORDER BY UnitPrice ASC;


#2. What are the products that we carry where we have at least 100 units on hand? Order 
#them in descending order by price. 
SELECT * FROM products
WHERE UnitsInStock > 100
ORDER BY UnitPrice DESC;


#3. What are the products that we carry where we have at least 100 units on hand? Order 
#them in descending order by price. If two or more have the same price, list those in 
#ascending order by product name.
SELECT * FROM products
WHERE UnitsInStock > 100
ORDER BY UnitPrice DESC, ProductName ASC;

 
#4. Write a query against the orders table that displays the total number of distinct 
#customers who have placed orders, by customer ID. 
SELECT 	DISTINCT CustomerID FROM orders;


#5. Write a query against the orders table that displays the total number of distinct 
#customers who have placed orders, by customer ID, for each country where orders 
#have been shipped.
SELECT DISTINCT CustomerID, ShipCountry
FROM orders;

 
#6. What are the products that we carry where we have no units on hand, but 1 or more 
#units of them are on backorder? Order them by product name. 
SELECT *
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName
;



#7. List the distinct job titles in employees. 
SELECT DISTINCT Title
FROM employees
;



#8. What employees have a salary that is between $2000 and $2500? Order them by job 
#title.
SELECT *
FROM employees
WHERE Salary > 2000 AND Salary < 2500
;


