-- Continue answering the below questions by querying the Northwind database, 
-- saving your script to W3_Exercises as 4B_aggregations.sql. 


-- 1. What is the price of the cheapest item that Northwind sells? 
SELECT MIN(UnitPrice)
FROM products
;


-- 2. What is the average price of items that Northwind sells? 
SELECT AVG(UnitPrice)
FROM products
;


-- 3. What is the price of the most expensive item that Northwind sells? 
SELECT MAX(UnitPrice)
FROM products
;


-- 4. What is the sum of all the employee's salaries? 
SELECT SUM(Salary)
FROM employees
;



-- 5. Which employee makes the highest salary, and which employee makes the lowest? 
SELECT FirstName, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)
OR salary = (SELECT MIN(salary) FROM employees)
;



-- 6. What is the supplier ID of each supplier and the number of items they supply? (You can 
-- answer this query by only looking at the products table.) 
SELECT DISTINCT SupplierID, COUNT(SupplierID) AS 'Number of Products Supplied'
FROM products
GROUP BY SupplierID
;


-- 7. What is the category ID of each category and the average price of each item in the 
-- category? (You can answer this query by only looking at the products table.) 
SELECT DISTINCT CategoryID, AVG(UnitPrice) AS 'AVG Price'
FROM products
GROUP BY CategoryID
;


-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each 
-- supplier and the number of items they supply? (Again, you can answer this query by 
-- only looking at the products table.)   
SELECT DISTINCT SupplierID, COUNT(SupplierID) AS 'Number of Products Supplied'
FROM products
GROUP BY SupplierID
HAVING COUNT(SupplierID) >= 5
;


-- 9. List the product id, product name, and inventory value (calculated by multiplying unit 
-- price by the number of units on hand). Sort the results in descending order by value. If 
-- two or more have the same value, order by product name.
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue 
FROM products
ORDER BY InventoryValue DESC, ProductName
;

