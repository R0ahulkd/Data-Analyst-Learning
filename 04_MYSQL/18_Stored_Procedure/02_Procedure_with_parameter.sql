DELIMITER &&

CREATE PROCEDURE get_limit(in var int)
BEGIN
    SELECT * FROM classicmodels.customers limit var;
END &&

DELIMITER ;

call classicmodels.get_limit(3)