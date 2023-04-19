ALTER TABLE car
ADD COLUMN is_serviced BOOLEAN DEFAULT FALSE;

CREATE OR REPLACE PROCEDURE update_car_service_status()
LANGUAGE PLPGSQL AS $$
BEGIN
    UPDATE car
    SET is_serviced = EXISTS (
        SELECT 1
        FROM ticket
        WHERE car.car_id = ticket.car_id
    );
    COMMIT;
END;
$$;
CALL update_car_service_status();