INSERT INTO salesperson
VALUES
    (DEFAULT, 'Billy', 'Moneybags'),
    (DEFAULT, 'Ash', 'Winters'),
    (DEFAULT, 'Larry', 'Jones'),
    (DEFAULT, 'Judy', 'Harris');

INSERT INTO customer
VALUES
    (DEFAULT, 'Rob', 'Johnson', '111-111-1111', 'rjohnson@gmail.com'),
    (DEFAULT, 'Danielle', 'Williams', '333-333-3333', 'dwilliams@gmail.com'),
    (DEFAULT, 'Tony', 'Torres', '222-222-2222', 'ttorres@gmail.com'),
    (DEFAULT, 'Adriana', 'Jansen', '444-444-4444', 'ajansen@gmail.com');

INSERT INTO car
VALUES
    (DEFAULT, 'Honda', 'Civic LX', 2011, 7856.99, FALSE, 2, 1),
    (DEFAULT, 'Mercedes-Benz', 'C-Class C 300', 2023, 50104.99, TRUE, 4, 4),
    (DEFAULT, 'Porche', '918 Spyder', 2015, 2099994.99, FALSE, 1, NULL),
    (DEFAULT, 'Toyota', 'Corolla LE', 2020, 21999.99, FALSE, 3, 2),
    (DEFAULT, 'Audi', 'Q5', 2020, 45279.99, FALSE, 3, 2);

INSERT INTO mechanic
VALUES
    (DEFAULT, 'Carlos', 'Santana'),
    (DEFAULT, 'Charles', 'Lewis'),
    (DEFAULT, 'Carrol', 'Shane'),
    (DEFAULT, 'Mark', 'Jacobs');

INSERT INTO record
VALUES
    (DEFAULT, '2022-02-11', 'Ash Winters sold a white Honda Civic LX to Rob Johnson, maintenance by Carrol Shane', 1, 3),
    (DEFAULT, '2023-01-06', 'Billy Moneybags is trying to sell a black Porche 918 Spyder, maintenance by Carlos Santana', 3, 1),
    (DEFAULT, '2019-05-25', 'Ash Winters sold a white Honda Civic LX to Rob Johnson, maintenance by Charles Lewis', 1, 2),
    (DEFAULT, '2016-11-30', 'Larry Jones sold a red Toyota Corolla LE to Danielle Williams, repaired by Carrol Shane', 4, 2);

INSERT INTO ticket
VALUES
    (DEFAULT, '2016-11-01', 2, 4, 3, 4),
    (DEFAULT, '2023-01-01', NULL, 3, 1, 2),
    (DEFAULT, '2019-05-25', 1, 1, 2, 3),
    (DEFAULT, '2022-02-02', 1, 1, 3, 1);

INSERT INTO part
VALUES
    (DEFAULT, 'carburetor', 'Fuel supply system to control and mix air and fuel entering the engine.', 433.99),
    (DEFAULT, 'brake pads', 'These pads have steel backing plates and used for disc brakes', 56.99),
    (DEFAULT, 'spark plug', 'Ignition system needs this to produce a spark to mix air and fuel in the combustion chamber', 11.99),
    (DEFAULT, 'windshield', 'Laminated safety glass, can be trimmed to fit vehicle', 274.99);

INSERT INTO invoice
VALUES
    (DEFAULT, '2022-01-31', 8408.97, 2, 1, 1),
    (DEFAULT, '2016-10-02', 23519.93, 3, 2, 4),
    (DEFAULT, '2023-04-13', 53562.34, 4, 4, 2),
    (DEFAULT, '2020-03-15', 48429.49, 1, 3, 5);

INSERT INTO car_part
VALUES
    (DEFAULT, 1, 2, 1),
    (DEFAULT, 1, 1, 1),
    (DEFAULT, 3, 3, 2),
    (DEFAULT, 4, 3, 4);