-- *****************ÖDEV1********************

--Soru 1) 
SELECT title, description FROM film;
--Soru 2)
SELECT * FROM film WHERE length > 60 AND length < 7;
--Soru 3)
SELECT *FROM film WHERE rental_rate=0.99 AND (replacement_cost= 12.99 OR replacement_cost= 28.99);
--Soru 4)
SELECT first_name ,last_name FROM customer WHERE first_name='Mary';
--Soru 5)
SELECT * FROM film WHERE NOT length > 50  AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);

-- *****************ÖDEV2********************

--Soru1 
SELECT *FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99
--Soru2
SELECT first_name, last_name FROM actor WHERE first_name IN('Penelope', 'Nick', 'Ed');
--Soru3
SELECT * FROM film WHERE rental_rate IN(0.99,2.99,4.99) AND replacement_cost IN(12.99,15.99,28.99)

-- *****************ÖDEV3********************

--Soru1
SELECT * FROM country WHERE country LIKE 'A%a';
--Soru2
SELECT * FROM country WHERE length(country) >= 6 AND country LIKE '%n'
--Soru3
SELECT title FROM film WHERE (LENGTH(title) - LENGTH(REPLACE(LOWER(title), 't', ''))) >= 4;
--Soru4
SELECT * FROM film WHERE title LIKE'C%' AND length(title)>60 AND rental_rate=2.99;

-- *****************ÖDEV4********************

--Soru1
SELECT DISTINCT replacement_cost FROM film 
--Soru2
SELECT COUNT(DISTINCT replacement_cost) FROM film 
--Soru3
SELECT COUNT(*) FROM film WHERE title ILIKE'T%' AND rating='G'
--Soru4
SELECT COUNT(*) FROM country WHERE LENGTH(country)=5 ;
--Soru5
SELECT COUNT(*) FROM city WHERE city ILIKE'%R'