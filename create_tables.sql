CREATE TABLE Salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100),
);

CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(50),
);

CREATE TABLE Car (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INTEGER,
    price NUMERIC(9,2),
    is_new BOOLEAN,
    salesperson_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (salesperson_id)
        REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id) NULL
);

CREATE TABLE Mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100),
);

CREATE TABLE Record (
    record_id SERIAL PRIMARY KEY,
    record_date DATE,
    description VARCHAR(500),
    car_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id) NULL,
    FOREIGN KEY (mechanic_id)
        REFERENCES Mechanic(mechanic_id)
);

CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    date_created DATE,
    customer_id INTEGER,
    car_id INTEGER,
    mechanic_id INTEGER,
    record_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id),
    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id),
    FOREIGN KEY (mechanic_id)
        REFERENCES Mechanic(mechanic_id),
    FOREIGN KEY (record_id)
        REFERENCES Record(record_id)
);

CREATE TABLE Part (
    part_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(500),
    price NUMERIC(6,2),
);

CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    date_created DATE,
    total NUMERIC(9,2),
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (salesperson_id)
        REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id),
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id) NULL
);

CREATE TABLE Car_Part (
    car_part_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    part_id INTEGER,
    record_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id),
    FOREIGN KEY (part_id)
        REFERENCES Part(part_id),
    FOREIGN KEY (record_id)
        REFERENCES Record(record_id)
);