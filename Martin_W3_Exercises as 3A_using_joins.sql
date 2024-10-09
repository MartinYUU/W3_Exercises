-- Continue answering the below questions by querying the Northwind database, 
-- saving your script to W3_Exercises as 3A_using_joins.sql. 
-- 1. List the product id, product name, unit price and category name of all products. Order 
-- by category name and within that, by product name. 
SELECT ProductID, ProductName, UnitPrice, categories.CategoryName From products
JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;



-- 2. List the product id, product name, unit price and supplier name of all products that 
-- cost more than $75. Order by product name.
SELECT ProductID, ProductName, UnitPrice, suppliers.CompanyName From products
JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName
;


 
-- 3. List the product id, product name, unit price, category name, and supplier name of 
-- every product. Order by product name. 
SELECT ProductID, ProductName, UnitPrice, categories.CategoryName, suppliers.CompanyName
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
ORDER BY ProductName
;



-- 4. List the order id, ship name, ship address, and shipping company name of every order 
-- that shipped to Germany. 
SELECT OrderID, ShipName, ShipAddress, shippers.CompanyName
FROM orders
JOIN shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = 'Germany'
;



-- 5. List the order id, order date, ship name, ship address of all orders that ordered 
-- "Sasquatch Ale"
SELECT orders.OrderID, OrderDate, ShipName, ShipAddress               #, `northwind`.`order details`.ProductID
FROM orders
JOIN `northwind`.`order details`
ON `northwind`.`order details`.OrderID = northwind.orders.OrderID
wHERE northwind.`order details`.ProductID = 34
;
