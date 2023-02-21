use sakila;

# 1.Select all the actors with the first name ‘Scarlett’.
SELECT first_name from actor
where first_name='Scarlett';

# 2.Select all the actors with the last name ‘Johansson’.
select last_name from actor
where last_name = 'Johansson';

# 3. How many films (movies) are available for rent?
select count(film_id)
from film;

# 4.How many films have been rented?
select count(rental_date)
from rental;

# 5.What is the shortest and longest rental period?
select min(rental_duration) as shortest, max(rental_duration) as longest
from film;

# 6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration , min(length) as min_duration
from film;

# 7.What's the average movie duration?
select avg(length) from film;

# 8.What's the average movie duration expressed in format (hours, minutes)?
select sec_to_time(avg(length)*60) as avg_h_m
from film;

# 9.How many movies longer than 3 hours?
SELECT count(length) as longer_than_3_hours 
FROM film 
where length > 180;

# 10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT_WS(' ',first_name, last_name,'-', lower(email)) as name_and_email_formatted_list
FROM  customer;

# 11.What's the length of the longest film title?
SELECT title , length(title)
from film
order by length(title) desc
limit 1;

