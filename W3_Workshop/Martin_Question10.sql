-- How many copies of the film HUNCHBACK IMPOSSIBLE exist in the 
-- system?

SELECT * FROM sakila.inventory;

SELECT film.title, COUNT(sakila.inventory.film_id) AS 'number_in_inventory'
FROM sakila.film
JOIN sakila.inventory
ON sakila.inventory.film_id = sakila.film.film_id
WHERE film.title = 'HUNCHBACK IMPOSSIBLE'
GROUP BY film.title
;