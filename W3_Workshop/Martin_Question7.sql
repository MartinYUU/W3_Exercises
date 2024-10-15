-- Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out 
-- that GROUCHO was the correct name after all! In a single query: if the first 
-- name of the actor is currently HARPO, change it to GROUCHO. Then write a 
-- query to verify your change.

# used this just to make sure there is only 1 HARPO
-- SELECT *
-- FROM sakila.actor
-- Where first_name = 'HARPO'
-- ;

# Run this to disable safe update mode
-- SET SQL_SAFE_UPDATES = 0;

UPDATE sakila.actor 
SET first_name = 'GROUCHO'
Where first_name = 'HARPO'
;

# run this to re enable safe update mode
-- SET SQL_SAFE_UPDATES = 1;