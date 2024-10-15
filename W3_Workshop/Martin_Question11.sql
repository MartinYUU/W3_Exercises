--  The music of Queen and Kris Kristofferson have seen an unlikely 
-- resurgence. As an unintended consequence, films starting with the letters 
-- K and Q have also soared in popularity.
--  Use subqueries to display the titles 
-- of movies starting with the letters K and Q whose language is English.

SELECT film.title
FROM sakila.film
WHERE sakila.film.language_id IN 
	(SELECT sakila.language.language_id 
	FROM sakila.language
    WHERE language.name = 'English'
	)
AND (sakila.film.title LIKE 'K%' OR sakila.film.title LIKE 'Q%')
;



# I was able to do it with out a subquery as well
SELECT film.title
FROM sakila.film
JOIN sakila.language
ON sakila.language.language_id = sakila.film.language_id
WHERE (sakila.film.title LIKE 'K%'
OR sakila.film.title LIKE 'Q%')
AND language.name = 'English'
;

