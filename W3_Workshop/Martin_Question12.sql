-- 12. Insert a record to represent Mary Smith renting the movie ACADEMY 
-- DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to 
-- capture the exact row you entered into the rental table.

-- # Run this to find Mary's customer_id - 1
-- SELECT * FROM sakila.customer
-- WHERE first_name = 'MARY' AND last_name = 'SMITH';

-- #run this query to find the satff id of mike - 1
-- SELECT * FROM sakila.staff
-- WHERE first_name = 'Mike' AND last_name = 'Hillyer';

-- #Run this query to find inventory id of academy dinosour - 1
-- SELECT * FROM sakila.film
-- WHERE title = 'ACADEMY DINOSAUR';

# insert new rental record
INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id, last_update )
VALUES (NOW(), 1, 1, 1, NOW())
;

# Top row with rental id of 1605 is Mary's rental
-- SELECT * FROM sakila.rental
-- WHERE customer_id = 1 
-- ORDER BY rental_id DESC
-- ;

SELECT * FROM sakila.rental
WHERE rental_id = 16050 