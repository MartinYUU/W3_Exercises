-- You need to find the ID number, first name, and last name of an actor,
-- where the only thing you know about him is his first name, Joe.

SELECT actor_id AS 'ID Number', first_name AS 'First Name', last_name AS 'Last Name'
FROM actor
WHere first_name = 'Joe'
;


-- + Create an additional query to find all the movies that Joe has been in.
# This Solution relies on having run the first query and now knowing that 
# Joe's actor ID is 9
SELECT actor_id, film_actor.film_id, sakila.film.title
FROM sakila.film_actor
JOIN sakila.film
ON sakila.film.film_id = sakila.film_actor.film_id
WHERE actor_id = 9
;
