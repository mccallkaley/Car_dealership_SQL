-- car_id 

--worked with tate for first part  
--need to add where the foreign keys are 


CREATE TABLE customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  phone NUMERIC(10),
  email VARCHAR(100)
);
CREATE TABLE salesperson(
  salesperson_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);
CREATE TABLE mechanic(
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);
CREATE TABLE car(
  car_id SERIAL PRIMARY KEY,
  salesperson_id INTEGER,
  customer_id INTEGER,
  "year" NUMERIC(4),
  make VARCHAR(20),
  model VARCHAR(20),
  sale_date date DEFAULT CURRENT_DATE,
  price numeric(10,2),
  FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE service_history(
  service_history_id SERIAL PRIMARY KEY,
  car_id INTEGER,
  customer_id INTEGER
);
CREATE TABLE car_mechanic(
  car_mechanic_id SERIAL PRIMARY KEY,
  car_id INTEGER,
  mechanic_id INTEGER,
  service_date date DEFAULT CURRENT_DATE,
  FOREIGN KEY(car_id) REFERENCES car(car_id),
  FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);
CREATE TABLE "service"(
  car_id INTEGER,
  "description" VARCHAR(200),
  mechanic_id INTEGER,
  service_history_id INTEGER,
  amount numeric(8,2),
  service_date date DEFAULT CURRENT_DATE,
  FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
  FOREIGN KEY(service_history_id) REFERENCES service_history(service_history_id),
  FOREIGN KEY(car_id) REFERENCES car(car_id)
);
​