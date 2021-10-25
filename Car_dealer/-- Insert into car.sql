-- Insert into car

INSERT INTO car(
    "year",
     make,
     model,
     price
 )VALUES(
    '2018',
    'Ford',
    'Focus',
    '25000.00'
 )(
    '2012',
    'Nissan',
    'Ultima',
    '27000.00'
 )(
    '2017',
    'Nissan',
    'Electra',
    '28000.00'
 )(
    '2020',
    'Model X',
    'Tesla',
    '35000.00'
 )(
    '2015',
    'Jeep',
    'Rangler',
    '31000.00'
 );


SELECT *
FROM car






--CREATE TABLE car(
  --car_id SERIAL PRIMARY KEY,
  --salesperson_id INTEGER,
 -- customer_id INTEGER,
 -- "year" NUMERIC(4),
 -- make VARCHAR(20),
 -- model VARCHAR(20),
--  sale_date date DEFAULT CURRENT_DATE,
 -- price numeric(10,2),
 -- FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
 -- FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
--);