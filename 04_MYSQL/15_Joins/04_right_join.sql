select * from products;
select * from orderdetails;

select products.productName,orderdetails.quantityOrdered from products
right join orderdetails
on products.productCode = orderdetails.productCode;