-- Find all actors whose last names contain the letters LI. This time, order the
-- rows by last name and first name, in that order.

SELECT actor_id, first_name, last_name 
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name
;


-- + Create a second version of this query that adds a count of the total
-- number of movies each actor has been in.

SELECT actor_id, first_name, last_name, (SELECT COUNT(sakila.film_actor.actor_id)
										 FROM sakila.film_actor
                                         Where sakila.film_actor.actor_id = sakila.actor.actor_id)
                                         AS 'Numner of Films'
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name
;

