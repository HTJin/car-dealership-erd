CREATE OR REPLACE FUNCTION insert_salesperson (
    first_name VARCHAR, last_name VARCHAR
) RETURNS INTEGER AS $$
DECLARE salesperson_id_pk INTEGER;
BEGIN
    INSERT INTO salesperson
    VALUES (DEFAULT, first_name, last_name)
    RETURNING salesperson_id INTO salesperson_id_pk;
    RETURN salesperson_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_salesperson('Rick', 'Sanchez');

CREATE OR REPLACE FUNCTION insert_customer (
    customer_fname VARCHAR, customer_lname VARCHAR,
    customer_phone VARCHAR, customer_email VARCHAR
) RETURNS INTEGER AS $$
DECLARE customer_id_pk INTEGER;
BEGIN
    INSERT INTO customer
    VALUES (DEFAULT, customer_fname, customer_lname, customer_phone, customer_email)
    RETURNING customer_id INTO customer_id_pk;
    RETURN customer_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_customer('Florence', 'Adams', '555-555-5555', 'fadams@gmail.com');

CREATE OR REPLACE FUNCTION insert_car (
    vehicle_make VARCHAR, vehicle_model VARCHAR,
    vehicle_year INTEGER, vehicle_price NUMERIC,
    vehicle_is_new BOOLEAN, vehicle_salesperson_id INTEGER,
    vehicle_customer_id INTEGER
) RETURNS INTEGER
AS $$
DECLARE vehicle_id_pk INTEGER;
BEGIN
    INSERT INTO car
    VALUES (DEFAULT, vehicle_make, vehicle_model, vehicle_year, vehicle_price, vehicle_is_new, vehicle_salesperson_id, vehicle_customer_id)
    RETURNING car_id INTO vehicle_id_pk;
    RETURN vehicle_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_car('Ford', 'Mustang GT', 2022, 44018.99, TRUE, 5, 5);

CREATE OR REPLACE FUNCTION insert_mechanic (
    first_name VARCHAR, last_name VARCHAR
) RETURNS INTEGER AS $$
DECLARE mechanic_id_pk INTEGER;
BEGIN
    INSERT INTO mechanic
    VALUES (DEFAULT, first_name, last_name)
    RETURNING mechanic_id INTO mechanic_id_pk;
    RETURN mechanic_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_mechanic('Rick', 'Sanchez');

CREATE OR REPLACE FUNCTION insert_record (
    record_date DATE, record_description VARCHAR,
    record_car_id INTEGER, record_mechanic_id INTEGER
) RETURNS INTEGER
AS $$
DECLARE record_id_pk INTEGER;
BEGIN
    INSERT INTO record
    VALUES (DEFAULT, record_date, record_description, record_car_id, record_mechanic_id)
    RETURNING record_id INTO record_id_pk;
    RETURN record_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_record('2023-04-14', 'Rick Sanchez sold a blue Ford Mustang to Florence Adams, repaired by Rick Sanchez', 6, 5);

CREATE OR REPLACE FUNCTION insert_ticket (
    ticket_date DATE, ticket_customer_id INTEGER,
    ticket_car_id INTEGER, ticket_mechanic_id INTEGER,
    ticket_record_id INTEGER
) RETURNS INTEGER
AS $$
DECLARE ticket_id_pk INTEGER;
BEGIN
    INSERT INTO ticket
    VALUES (DEFAULT, ticket_date, ticket_customer_id, ticket_car_id, ticket_mechanic_id, ticket_record_id)
    RETURNING ticket_id INTO ticket_id_pk;
    RETURN ticket_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_ticket('2023-04-14', 5, 6, 5, 5);

CREATE OR REPLACE FUNCTION insert_part (
    part_name VARCHAR, part_description VARCHAR,
    part_price NUMERIC
) RETURNS INTEGER
AS $$
DECLARE part_id_pk INTEGER;
BEGIN
    INSERT INTO part
    VALUES (DEFAULT, part_name, part_description, part_price)
    RETURNING part_id INTO part_id_pk;
    RETURN part_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_part('alternator', 'Converts mechanical energy into electrical energy, charges the battery and powers the electrical system when the engine is running.', 189.99);

CREATE OR REPLACE FUNCTION insert_invoice (
    invoice_date_created DATE, invoice_total NUMERIC,
    invoice_salesperson_id INTEGER, invoice_customer_id INTEGER,
    invoice_car_id INTEGER
) RETURNS INTEGER
AS $$
DECLARE invoice_id_pk INTEGER;
BEGIN
    INSERT INTO invoice
    VALUES (DEFAULT, invoice_date_created, invoice_total, invoice_salesperson_id, invoice_customer_id, invoice_car_id)
    RETURNING invoice_id INTO invoice_id_pk;
    RETURN invoice_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_invoice('2023-05-15', 47100.32, 5, 5, 6);

CREATE OR REPLACE FUNCTION insert_car_part (
    car_part_car_id INTEGER, car_part_part_id INTEGER,
    car_part_record_id INTEGER
) RETURNS INTEGER
AS $$
DECLARE car_part_id_pk INTEGER;
BEGIN
    INSERT INTO car_part
    VALUES (DEFAULT, car_part_car_id, car_part_part_id, car_part_record_id)
    RETURNING car_part_id INTO car_part_id_pk;
    RETURN car_part_id_pk;
END;
$$ LANGUAGE plpgsql;
SELECT insert_car_part(6, 5, 5);