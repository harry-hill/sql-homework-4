-- Dealership Create Table Statements


-- Customers Table for Dealership
create table customers(
    customer_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

-- Salespeople Table for Dealership
create table salespeople(
    salesperson_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

-- Mechanics Table for Dealership
create table mechanics(
    mechanic_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

-- Invoices Table for Dealership
create table invoices(
    invoice_id SERIAL primary key,
    amount NUMERIC(7,2),
    salesperson_id INTEGER not null,
    invoice(salesperson_id) references salespeople(salesperson_id)
);

-- Cars Table for Dealership
create table cars(
    serial_number SERIAL primary key,
    make VARCHAR(100),
    model VARCHAR(100),
    year VARCHAR(100),
    invoice_id INTEGER not null,
    customer_id INTEGER not null,
    cars(invoice_id) references invoices(invoice_id),
    cars(customer_id) references customers(customer_id)
);

-- Service Tickets Table for Dealership
create table serviceTickets(
    service_ticket_id SERIAL primary key,
    mechanic_id INTEGER not null,
    serial_number INTEGER not null,
    serviceTickets(mechanic_id) references mechanics(mechanic_id)
);