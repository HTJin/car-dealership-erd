ALTER TABLE car
ADD COLUMN is_serviced BOOLEAN DEFAULT FALSE;

CREATE OR REPLACE PROCEDURE update_car_service_status()
LANGUAGE PLPGSQL AS $$
BEGIN
    UPDATE car
    SET is_serviced = EXISTS (
        SELECT 1
        FROM record
        WHERE car.car_id = record.car_id
    );
    COMMIT;
END;
$$;
CALL update_car_service_status();