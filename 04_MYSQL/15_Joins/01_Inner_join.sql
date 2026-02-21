select * from classicmodels.products;

select products.productName,orderdetails.quantityOrdered from products
inner join orderdetails
on products.productCode = orderdetails.productCode;