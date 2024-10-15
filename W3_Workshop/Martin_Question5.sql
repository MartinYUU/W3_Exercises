-- For last names that are shared by at least two actors, list those last names
-- and the number of actors who have that last name.

SELECT last_name, COUNT(*) AS actor_count
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, last_name ASC;
