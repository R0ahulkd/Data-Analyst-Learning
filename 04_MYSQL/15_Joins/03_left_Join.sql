select * from products;
select * from orderdetails;

select products.productName,orderdetails.quantityOrdered from products
left join orderdetails
on products.productCode = orderdetails.productCode;