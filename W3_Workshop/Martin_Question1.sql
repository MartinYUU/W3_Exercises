-- question1.sql
-- Display the first and last name of each actor in a single column in upper
-- case letters. Name the column in the results Actor Name.

SELECT concat(first_name, ' ', last_name) AS 'Actor Name'
FROM actor
;

-- + Create an additional query to sort Actor Name by the actor’s last name.

SELECT concat(first_name, ' ', last_name) AS 'Actor Name'
FROM actor
ORDER BY last_name
;
