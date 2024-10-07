# This query answeres Q1 
SELECT ProductID, ProductName, UnitPrice from products;

# This query answers Q2
SELECT ProductID, ProductName, UnitPrice from products
WHERE UnitPrice <= 7.5;

# This query answers Q3
SELECT  ProductID, ProductName, UnitsInStock, UnitsOnOrder FROM products;
SELECT  ProductID, ProductName, UnitsInStock, UnitsOnOrder FROM products
WHERE UnitsInStock = 0
AND UnitsOnOrder > 0;

# These next 2 queries answer Q4
SELECT * FROM northwind.categories;    -- ID # 8 = seafood
SELECT ProductID, ProductName, CategoryID, UnitPrice from products
WHERE CategoryID = 8;

# This query answers Q5
SELECT EmployeeID, LastName, FirstName, Title FROM employees -- just 1
WHERE Title LIKE '%Manager%';

#These Next 2 queries annswer Q6
SELECT SupplierID FROM suppliers       -- I used this Query to identify
WHERE CompanyName = 'Tokyo Traders';   -- Supplier ID for Tokyo Traders

SELECT * FROM products -- Only 3 products are supplied
WHERE SupplierID = 4;  -- by tokyo traders