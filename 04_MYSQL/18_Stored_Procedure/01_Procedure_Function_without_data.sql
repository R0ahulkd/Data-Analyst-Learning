DELIMITER &&

CREATE PROCEDURE get_data()
BEGIN
    SELECT * FROM classicmodels.customers;
END &&

DELIMITER ;

call classicmodels.get_data()