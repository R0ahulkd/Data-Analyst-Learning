select * from products;
select * from orderdetails;

select products.productName, products.quantityInStock, orderdetails.quantityOrdered from products cross join orderdetails
on products.productCode = orderdetails.productCode;