select * from sakila.payment;

select staff_id,sum(amount) from sakila.payment group by staff_id;