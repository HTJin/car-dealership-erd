ALTER TABLE car
ADD COLUMN color VARCHAR(50);

CREATE OR REPLACE PROCEDURE update_car_color()
LANGUAGE PLPGSQL AS $$
BEGIN
    UPDATE car
    SET color = (
        SELECT SUBSTRING(record.description FROM '\sold a (\w+)')
        FROM record
        WHERE car.car_id = record.car_id
    )
    WHERE color IS NULL;
END;
$$;
CALL update_car_color();