ALTER TABLE car
ADD COLUMN color VARCHAR(50);

CREATE OR REPLACE PROCEDURE update_car_color()
LANGUAGE PLPGSQL AS $$
BEGIN
    WITH color_subquery AS (
        SELECT DISTINCT ON (ticket.car_id)
            ticket.car_id,
            SUBSTRING(
                service.service_details
                FROM '(?<=sold a\s|sell a\s)(\w+)(?=\s[A-Za-z0-9\s-]+,)'
            ) AS car_color
        FROM ticket
        JOIN ticket_service ON ticket.ticket_id = ticket_service.ticket_id
        JOIN service ON ticket_service.service_id = service.service_id
        ORDER BY ticket.car_id, service.service_id DESC
    )
    UPDATE car
    SET color = color_subquery.car_color
    FROM color_subquery
    WHERE car.car_id = color_subquery.car_id;
END;
$$;
CALL update_car_color();