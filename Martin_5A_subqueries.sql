-- Continue answering the below questions by querying the Northwind database, 
-- saving your script to W3_Exercises as 5A_subqueries.sql. 


-- 1. What is the product name(s) of the most expensive products? HINT: Find the max price 
-- in a subquery and then use that value to find products whose price equals that value.
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice) 
				   FROM products
                   )
;


 
-- 2. What is the product name(s) and categories of the most expensive products? HINT: 
-- Find the max price in a subquery and then use that in your more complex query that 
-- joins products with categories.
SELECT ProductName, categories.CategoryName, UnitPrice
From products
JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) 
				   FROM products
                   )
ORDER BY CategoryName, ProductName
;

 
-- 3. What is the order id, shipping name and shipping address of all orders shipped via 
-- "Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery and 
-- then use that value to find the orders that used that shipper.
SELECT OrderID, ShipName, ShipAddress
FROM orders
JOIN shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipVia = (Select northwind.shippers.ShipperID 
				 FROM shippers
                 WHERE CompanyName
                 = 'Federal Shipping'
                 )
;


 
-- 4. What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the 
-- product id of "Sasquatch Ale" in a subquery and then use that value to find the 
-- matching orders from the 'order details' table. Because the 'order details' table has a 
-- space in its name, you will need to surround it with back ticks in the FROM clause. 
SELECT DISTINCT northwind.orders.OrderID 
FROM orders
JOIN northwind.`order details`
ON northwind.`order details`.OrderID = northwind.orders.OrderID
wHERE northwind.`order details`.ProductID = (SELECT northwind.products.ProductID
											 FROM northwind.products
                                             WHERE products.ProductName = 'Sasquatch Ale'
                                             )
;



-- 5. What is the name of the employee that sold order 10266? 
SELECT FirstName, LastName, EmployeeID
FROM employees
WHERE EmployeeID = (SELECT northwind.orders.EmployeeID
					FROM orders
                    WHERE OrderID = 10266
					)
;



-- 6. What is the name of the customer that bought order 10266?
SELECT CompanyName, CustomerID
FROM customers
WHERE CustomerID = (SELECT northwind.orders.CustomerID
					FROM orders
                    WHERE OrderID = 10266
					)
;