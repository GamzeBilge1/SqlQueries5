# SQL Ödevleri

Bu doküman, SQL ödevlerindeki sorguların özetini içermektedir. Sorgular, farklı tablolar üzerinde veri seçme, filtreleme ve analiz işlemlerini kapsamaktadır.

```sql
-- *****************ÖDEV1********************

-- Soru 1: Film tablosundaki 'title' ve 'description' sütunlarını seçer.
SELECT title, description FROM film;

-- Soru 2: Uzunluğu 60’tan büyük ve 7’den küçük olan filmleri seçer. (Mantıksal hata olabilir.)
SELECT * FROM film WHERE length > 60 AND length < 7;

-- Soru 3: Rental rate 0.99 ve replacement cost 12.99 veya 28.99 olan filmleri seçer.
SELECT * FROM film WHERE rental_rate=0.99 AND (replacement_cost= 12.99 OR replacement_cost= 28.99);

-- Soru 4: Customer tablosunda first_name 'Mary' olan müşterilerin ad ve soyadını seçer.
SELECT first_name, last_name FROM customer WHERE first_name='Mary';

-- Soru 5: Uzunluğu 50'den küçük olan ve rental rate değeri 2.99 veya 4.99 olmayan filmleri seçer.
SELECT * FROM film WHERE NOT length > 50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);

-- *****************ÖDEV2********************

-- Soru 1: Replacement cost değeri 12.99 ile 16.99 arasında olan filmleri seçer.
SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- Soru 2: Actor tablosunda first_name 'Penelope', 'Nick' veya 'Ed' olan aktörleri seçer.
SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- Soru 3: Rental rate 0.99, 2.99 veya 4.99 olan ve replacement cost 12.99, 15.99 veya 28.99 olan filmleri seçer.
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);

-- *****************ÖDEV3********************

-- Soru 1: Country tablosunda 'A' harfiyle başlayıp 'a' harfiyle biten ülkeleri seçer.
SELECT * FROM country WHERE country LIKE 'A%a';

-- Soru 2: İsmi en az 6 karakter uzunluğunda olan ve 'n' harfiyle biten ülkeleri seçer.
SELECT * FROM country WHERE length(country) >= 6 AND country LIKE '%n';

-- Soru 3: Başlıkta en az 4 adet 't' harfi geçen filmleri seçer.
SELECT title FROM film WHERE (LENGTH(title) - LENGTH(REPLACE(LOWER(title), 't', ''))) >= 4;

-- Soru 4: Başlığı 'C' harfiyle başlayan, uzunluğu 60’tan büyük ve rental rate değeri 2.99 olan filmleri seçer.
SELECT * FROM film WHERE title LIKE 'C%' AND length(title) > 60 AND rental_rate = 2.99;

-- *****************ÖDEV4********************

-- Soru 1: Film tablosunda replacement cost değerlerini tekrar etmeyecek şekilde listeler.
SELECT DISTINCT replacement_cost FROM film;

-- Soru 2: Film tablosunda tekrar etmeyen replacement cost değerlerinin toplam sayısını döner.
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- Soru 3: Başlığı 'T' harfiyle başlayan ve rating değeri 'G' olan filmlerin sayısını döner.
SELECT COUNT(*) FROM film WHERE title ILIKE 'T%' AND rating='G';

-- Soru 4: Country tablosunda ismi tam olarak 5 karakter uzunluğunda olan ülkelerin sayısını döner.
SELECT COUNT(*) FROM country WHERE LENGTH(country)=5;

-- Soru 5: İsmi 'R' harfiyle biten şehirlerin sayısını döner.
SELECT COUNT(*) FROM city WHERE city ILIKE '%R';
