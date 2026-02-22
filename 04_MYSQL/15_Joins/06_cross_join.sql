select * from products;
select * from orderdetails;

select * from products cross join orderdetails
on products.productCode = orderdetails.productCode;