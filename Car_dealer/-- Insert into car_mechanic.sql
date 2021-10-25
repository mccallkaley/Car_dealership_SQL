-- Insert into car_mechanic

INSERT INTO "service"(
    amount
 )VALUES(
     '35000'
 )

 SELECT *
 FROM "service"
 
 
 
 /*







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