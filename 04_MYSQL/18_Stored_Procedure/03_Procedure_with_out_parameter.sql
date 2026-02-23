DELIMITER &&

CREATE PROCEDURE get_credit(out var int)
BEGIN
    SELECT max(creditLimit) into var FROM classicmodels.customers;
END &&

DELIMITER ;

call classicmodels.get_credit(@m);
select @M #@m is just a variable name (always use @ in starting)