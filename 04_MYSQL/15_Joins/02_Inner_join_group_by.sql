select * from classicmodels.products;

select products.productName,sum(orderdetails.quantityOrdered) from products
inner join orderdetails
on products.productCode = orderdetails.productCode
group by products.productName;