USE sakila;

-- 1. Drop column picture from staff.
ALTER TABLE sakila.staff
DROP picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT *
FROM sakila.staff;

SELECT *
FROM sakila.customer
WHERE first_name = 'Tammy' and last_name = 'Sanders';

INSERT INTO sakila.staff(first_name, last_name, address_id, email, store_id,active,username)
VALUES
('Tammy','Sanders','79','TAMMY.SANDERS@sakilacustomer.org',2,1,'Tammy');

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.
SELECT *
FROM sakila.rental;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER'; # customer_id = 130

SELECT *
FROM sakila.film
WHERE title = 'Academy Dinosaur'; # film_id = 1

SELECT *
FROM sakila.inventory
WHERE film_id = 1;

SELECT staff_id FROM sakila.staff
WHERE first_name = 'Mike';  # staff_id = 1

INSERT INTO sakila.rental(rental_date, inventory_id, customer_id, staff_id)
VALUES
('2023-05-27 12:49:00',5,130,1);

SELECT *
FROM sakila.rental
WHERE customer_id = '130';







