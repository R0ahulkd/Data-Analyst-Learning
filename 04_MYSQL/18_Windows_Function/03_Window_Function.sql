select *, rank()
over(partition by payments.amount) FROM classicmodels.payments;