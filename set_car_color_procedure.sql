ALTER TABLE car
ADD COLUMN color VARCHAR(50);

CREATE OR REPLACE PROCEDURE update_car_color()
LANGUAGE PLPGSQL AS $$
BEGIN
    WITH color_subquery AS (
        SELECT DISTINCT ON (record.car_id)
            record.car_id,
            SUBSTRING(
                record.description
                FROM '(?<=sold a\s|sell a\s)(\w+)(?=\s[A-Za-z0-9\s-]+,)'
            ) AS car_color
        FROM record
        ORDER BY record.car_id, record.record_id DESC
    )
    UPDATE car
    SET color = color_subquery.car_color
    FROM color_subquery
    WHERE car.car_id = color_subquery.car_id;
END;
$$;

CALL update_car_color();