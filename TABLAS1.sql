CREATE TABLE rental_partition (
rental_date date,
rental_id int) 
PARTITION BY RANGE (rental_date);
create TABLE rental_2005 partition of rental_partition for values from ('2005-01-01') to ('2006-01-01');
create TABLE rental_2006 partition of rental_partition for values from ('2006-01-01') to ('2007-01-01');
insert into rental_partition  (select rental_date,rental_id  from rental);


