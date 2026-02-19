select * from sakila.payment;

select datediff(payment_date, last_update) as dates from sakila.payment;
select datediff(last_update, payment_date) as dates from sakila.payment;