 EXPLAIN SELECT *FROM customers WHERE customersName='Land of Toys Inc.';
 ALTER TABLE  customers ADD INDEX idx_customerName(customerName);
 EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.'; 
 ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
 EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';
SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
ALTER TABLE customers DROP idx_full_name;
CREATE PROCEDURE findAllCustomers()
DELIMITER //

CREATE PROCEDURE findAllCustomers()

BEGIN

  SELECT * FROM customers;

END //
DELIMITER ;
call findAllCustomers();
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()

DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()

BEGIN

SELECT * FROM customers where customerNumber = 175;

END //

DELIMITER //


CREATE PROCEDURE getCusById

(IN cusNum INT(11))

BEGIN

  SELECT * FROM customers WHERE customerNumber = cusNum;

END //

DELIMITER ;
call getCusById(175);
DELIMITER //

CREATE PROCEDURE GetCustomersCountByCity(

    IN  in_city VARCHAR(50),

    OUT total INT

)

BEGIN

    SELECT COUNT(customerNumber)

    INTO total

    FROM customers

    WHERE city = in_city;

END//

DELIMITER ;
CALL GetCustomersCountByCity('Lyon',@total);

SELECT @total;
DELIMITER //

CREATE PROCEDURE SetCounter(

    INOUT counter INT,

    IN inc INT

)

BEGIN

    SET counter = counter + inc;

END//

DELIMITER ;
SET @counter = 1;

CALL SetCounter(@counter,1); -- 2

CALL SetCounter(@counter,1); -- 3

CALL SetCounter(@counter,5); -- 8

SELECT @counter;

CREATE VIEW customer_views AS

SELECT customerNumber, customerName, phone

FROM  customers;
SELECT * FROM customer_views;
CREATE OR REPLACE VIEW customer_views AS

SELECT customerNumber, customerName, contactFirstName, contactLastName, phone

FROM customers

WHERE city = 'Nantes';
