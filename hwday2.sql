-- Q1
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

--Q2
SELECT COUNT(DISTINCT payment_id)
FROM payment
where amount BETWEEN '3.99'AND '5.99';

--Q3
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--Q4
SELECT COUNT(*)
FROM customer
WHERE last_name LIKE 'William';
--OR WHERE last_name = 'William'

--Q5
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id DESC;
-- Or
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--Q6
SELECT COUNT(DISTINCT district)
FROM address;

--Q7
SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--Q8
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--Q9
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;

--Q10
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;