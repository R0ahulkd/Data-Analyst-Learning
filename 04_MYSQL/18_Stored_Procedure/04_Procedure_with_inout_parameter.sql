DELIMITER &&

CREATE PROCEDURE get_name(inout var int)
BEGIN
    SELECT customerName from customers where customerNumber = var;
END &&

DELIMITER ;

set @rahul = 125;
call classicmodels.get_name(@rahul);