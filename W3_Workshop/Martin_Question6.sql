-- The actor HARPO WlLLlAMS was accidentally entered in the actor table as 
-- GROUCHO WILLIAMS. Write one query to fix the record, plus another to 
-- verify the change
# Used This query to find GROUCHO WILLIAMS and his actor_id
# Found 3 GROUCHOs
-- SELECT *
-- FROM sakila.actor
-- Where first_name = 'GROUCHO'
-- ;

#Used this query to change the first name from GROUCHO to HARPO
UPDATE sakila.actor 
SET first_name = 'HARPO'
Where actor_id = 172
;

# Used this query to confirm change
SELECT *
FROM sakila.actor
Where actor_id = 172
;