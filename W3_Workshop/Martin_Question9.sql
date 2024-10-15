--  List each film and the number of actors who are listed for that film. Use 
-- tables film_actor and film. Use inner join

SELECT film.title, count(film_actor.film_id) AS num_of_actors
FROM sakila.film
INNER JOIN sakila.film_actor
ON sakila.film_actor.film_id = sakila.film.film_id
GROUP BY film.title
ORDER BY count(film_actor.film_id) DESC
;