-- Stored Function to insert data into actor

--CREATE OR REPLACE FUNCTION add_actor(
--	_actor_id INTEGER, 
--	_first_name VARCHAR, 
--	_last_name VARCHAR, 
--	_last_update TIMESTAMP WITHOUT TIME ZONE
--)
--RETURNS void
--AS $MAIN$
--BEGIN
--	INSERT INTO actor(actor_id,first_name,last_name,last_update)
--	VALUES(_actor_id,_first_name,_last_name,_last_update);
--END;
--$MAIN$
--LANGUAGE plpgsql;


--SELECT add_actor(500, 'Kevin','Hart', NOW()::timestamp)

-- Verify that it worked
--SELECT * FROM actor WHERE actor_id = 500;

-- DELETE function
--DROP FUNCTION add_actor



CREATE OR REPLACE FUNCTION add_mechanic(_mechanic_id INT, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS 
$$
BEGIN
    INSERT INTO mechanic(mechanic_id, first_name, last_name) 
    VALUES(_mechanic_id, _first_name, _last_name);
END;
$$
LANGUAGE plpgsql;

SELECT add_mechanic(
    6, 
    'Harper',
    'Washington'
    );

SELECT * FROM mechanic
WHERE mechanic_id = 6

SELECT *
FROM mechanic