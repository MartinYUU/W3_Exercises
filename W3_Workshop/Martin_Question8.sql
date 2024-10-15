-- Use JOIN to display the total amount rung up by each staff member in 
-- August of 2005, using tables staff and payment.


SELECT staff.first_name, staff.last_name, SUM(amount) AS 'Total Amount Rung'
FROM sakila.payment
JOIN sakila.staff 
ON sakila.staff.staff_id = sakila.payment.staff_id
WHERE payment_date >= '2005-08-01 00:00:00'
AND payment_date <= '2005-09-01 00:00:00'
GROUP BY first_name, last_name
;

