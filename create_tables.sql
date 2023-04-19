CREATE DATABASE car_dealership;

CREATE TABLE Salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100)
);

CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(50)
);

CREATE TABLE Car (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INTEGER,
    car_price NUMERIC(9,2),
    is_new BOOLEAN,
    customer_id INTEGER,
    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id)
);

CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    total NUMERIC(9,2),
    salesperson_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (salesperson_id)
        REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id)
);

CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    ticket_date DATE,
    car_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id)
);

CREATE TABLE Mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100)
);

CREATE TABLE Ticket_Mechanic (
    tick_mech_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (ticket_id)
        REFERENCES Ticket(ticket_id),
    FOREIGN KEY (mechanic_id)
        REFERENCES Mechanic(mechanic_id)
);

CREATE TABLE Service (
    service_id SERIAL PRIMARY KEY,
    service_date DATE,
    service_details VARCHAR(500),
    service_price NUMERIC(8,2)
);

CREATE TABLE Ticket_Service (
    tick_serv_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (ticket_id)
        REFERENCES Ticket(ticket_id),
    FOREIGN KEY (service_id)
        REFERENCES Service(service_id)
);

CREATE TABLE Part (
    part_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    part_details VARCHAR(500),
    part_price NUMERIC(6,2)
);

CREATE TABLE Car_Part (
    car_part_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    part_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Car(car_id),
    FOREIGN KEY (part_id)
        REFERENCES Part(part_id)
);