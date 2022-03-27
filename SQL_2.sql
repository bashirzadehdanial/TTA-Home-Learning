-- create first table
CREATE DATABASE shipping_system;

CREATE TABLE destinations(
     country VARCHAR(10) NOT NULL,
     city VARCHAR(12) NOT NULL,
     postcode VARCHAR(10) NOT NULL,
     person_name VARCHAR(20) NOT NULL,
     person_id int(10) NOT NULL,
     PRIMARY KEY (person_id)
     );
     
EXPLAIN desrtinations;
      
INSERT INTO destinations (country, city, state, person_name, person_id)
VALUES

("USA", "Marysville", "Washington", "Toby", 1),
("USA", "Perris", "	California", "Pawnee", 2),
("USA", "Cleveland", "	Ohio", "Wagon", 3),
("USA", "Bellingham", "Washington", "Leibniz", 4),
("USA", "Apopka", "Nevada", "Digve", 5),
("USA", "Lakewood", "Michigan", "Hobnob", 6)
;



SELECT * FROM destinations;
      
      
-- create second table

CREATE TABLE orders(
     order_id int(10) NOT NULL,
     size VARCHAR(10) NOT NULL,
     weight int(10) NOT NULL,
     person_id int(10) NOT NULL,
     PRIMARY KEY (order_id)
     );
     
EXPLAIN orders;

INSERT INTO orders (order_id, city, size, weight, person_id)
VALUES

(1, "Marysville", "small", 22, 5),
(2, "Perris", "large", 12, 3),
(3, "Cleveland", "small", 3, 8),
(4, "Bellingham", "very large", 5,2),
(5, "Apopka", "very small", 7, 4),
(6, "Lakewood", "large", 2, 1)
;

SELECT * FROM ordes;

-- Updated city of Toby

UPDATE destinations
SET city = "Buckeye"
WHERE person_id = 1;

-- Joining tables

SELECT destinations.person_name , orders.person_id
FROM destinations
INNER JOIN orders
ON destinations.person_id = orders.order_id;


 -- Delete an item
 Drop DATABASE shipping_system 
 
 
 
 -- select using comparison operators
SELECT * FROM orders
WHERE size between 10 and 15;
 