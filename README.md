# car-dealership-erd
### The dealership sells both new and used cars, and it operates a service facility. The design is based on the following business rules:
<ol>
    <li>A salesperson may sell many cars, but each car is sold by only one salesperson.</li>
    <li>A customer may buy many cars, but each car is purchased by only one customer.</li>
    <li>A salesperson writes a single invoice for each car he or she sells.</li>
    <li>A customer gets an invoice for each car he or she buys.</li>
    <li>A customer may come in just to have his or her car serviced; that is, a customer need not buy a car to be classified as a customer.</li>
    <li>When a customer takes one or more cars in for repair or service, one service ticket is written for each car.</li>
    <li>The car dealership maintains a service history for each of the cars serviced. The service records are referenced by the car’s serial number.</li>
    <li>A car brought in for service can be worked on by many mechanics, and each mechanic may work on many cars.</li>
    <li>A car that is serviced may or may not need parts (e.g., adjusting a carburetor or cleaning a fuel injector nozzle does not require providing new parts).</li>
</ol>
##### The repository contains:
```
car_dealership_erd.pdf - created on lucidchart
create_tables.sql - Create database and table
store_data.sql - At least 4 pieces/records of data inside of the tables
insert_functions.sql - At least 3 of inserts from a stored function
is_serviced_procedure - A procedure to update a purchased vehicle's service boolean
```