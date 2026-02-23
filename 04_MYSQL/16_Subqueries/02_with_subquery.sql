select * from classicmodels.customers where creditLimit >
(select avg(creditLimit) from classicmodels.customers);