select * from customers;

create view count_of_customers as #It creates a view
select country,count(customerNumber) from classicmodels.customers
group by country;