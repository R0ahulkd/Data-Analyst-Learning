select *, dense_rank()
over(partition by payments.customerNumber) FROM classicmodels.payments;