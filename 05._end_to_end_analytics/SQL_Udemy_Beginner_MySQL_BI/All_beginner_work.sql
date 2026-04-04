/* USE mavenmovies; -- use this only in MySQL workbench */
-- this is also a comment but not multiline

SELECT * 
FROM rental;

SELECT * 
FROM inventory;

SELECT * 
FROM customer;

/* this is a multiline comment */

SELECT
    customer_id,
    rental_date
FROM
    rental;

-- pull list of first name, last name and email of each of customers?
-- Solve by yourself

SHOW TABLES

SELECT *
FROM customer;
-- we see this has what we need

-- Answer therefore is
SELECT 
    first_name,
    last_name,
    email
FROM customer;







SELECT rating
FROM film;

-- Unique values
SELECT DISTINCT rating
FROM film;



-- pull all rental duration types?
SHOW TABLES
SELECT *
FROM film;
-- found it

-- Answer is
SELECT DISTINCT rental_duration
FROM film;




-- WHERE CLAUSE

SELECT
    customer_id,
    rental_id,
    amount,
    payment_date
FROM
    payment
WHERE
    amount = 0.99;


-- note DATETIME for WHERE clause
SELECT
    customer_id,
    rental_id,
    amount,
    payment_date
FROM
    payment
WHERE
    payment_date>'2006-01-01' 


-- Assignment: payment records for long term customers. pull all payments from first 100 customers (based on customer ID , see preview?
SHOW TABLES

SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE customer_id <= 100;

-- BETWEEN CLAUSE , note between is inclusive on both ends
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE customer_id BETWEEN 1 AND 100;



-- WHERE & AND
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE amount=0.99 AND payment_date > '2006-01-01'


-- assignment
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE customer_id <= 100 AND amount >= 5.00 AND payment_date >= "2006-01-01"

-- OR clause
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE customer_id = 5 OR customer_id = 11 OR customer_id = 29

-- assignment
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE amount >= 5.00 OR customer_id = 42 OR customer_id = 53 OR customer_id = 60 OR customer_id = 75

-- IN operator -> useful for repeating queries, DO NOT USE = sign!
SELECT customer_id,rental_id,amount,payment_date
FROM payment
WHERE amount >= 5.00 OR customer_id IN (42,53,60,75)

-- LIKE operator ->
SELECT title ,description
FROM film
WHERE description LIKE '%Epic%'

SELECT title ,description
FROM film
WHERE description LIKE '%China'


SELECT title ,description
FROM film
WHERE title LIKE '_LADDIN CALENDAR'


SELECT title ,description
FROM film
WHERE title NOT LIKE '_LADDIN CALENDA_'

-- ASSIGNMENT
SELECT title, special_features
FROM film
WHERE special_features LIKE '%Behind the Scenes%'

-- GROUP BY clause
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating

-- GROUP BY clause
SELECT rating, COUNT(film_id),COUNT(film_id) AS film_with_this_rating
FROM film
GROUP BY rating

-- Assignment
-- pay special attention here note the count is not in group by;
SELECT rental_duration,COUNT(title) AS number_of_titles
FROM film
GROUP BY rental_duration


-- Multiple GROUP BY (i.e. multiple segmentation via unique combos count of films)
SELECT rating, rental_duration,COUNT(film_id) AS count_of_films
FROM film
GROUP BY rating,rental_duration

-- Aggregate Functions
SELECT 
    rating,
    COUNT(film_id) AS count_of_film,
    MIN(length) AS shortest_film_length,
    MAX(length) AS longest_film_length,
    AVG(length) AS avg_film_length,
    AVG(rental_duration) AS avg_rental_duration
FROM film
GROUP BY rating

-- Assignment
SELECT 
    replacement_cost,
    COUNT(film_id),
    MIN(rental_rate),
    MAX(rental_rate),
    AVG(rental_rate)
FROM film
GROUP BY replacement_cost

-- HAVING clause, notice that HAVING filters the aggregate function
SELECT customer_id, COUNT(*) AS total_rental
FROM rental
GROUP BY customer_id
HAVING COUNT(*) >= 30
-- trim succesful

-- Assignment
SELECT customer_id,COUNT(*) AS total_rentals
FROM rental
GROUP BY customer_id
HAVING COUNT(*) < 15




