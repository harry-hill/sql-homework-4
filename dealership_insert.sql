-- Dealership Table Insert Statements


-- Insert into Customers Table for Dealership
CREATE OR REPLACE FUNCTION add_customer(
    _first_name VARCHAR,
    _last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customers(first_name,last_name)
	VALUES(_first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_customer('James', 'Smith');

SELECT add_customer('Mary', 'Johnson');

-- Insert into Salespeople Table for Dealership
CREATE OR REPLACE FUNCTION add_salesperson(
    _first_name VARCHAR,
    _last_name VARCHAR
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salespeople(first_name,last_name)
	VALUES(_first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_salesperson('John', 'Williams');

SELECT add_salesperson('Patricia', 'Brown');

-- Insert into Mechanics Table for Dealership
insert into mechanics(first_name, last_name)
values('Robert', 'Jones')

insert into mechanics(first_name, last_name)
values('Linda', 'Garcia')

-- Insert into Invoices Table for Dealership
insert into invoices(amount)
values(32678.65)

insert into invoices(amount)
values(21856.32)

-- Insert into Cars Table for Dealership
insert into cars(make, model, year)
values('Honda', 'CR-V', '2023')

insert into cars(make, model, year)
values('Honda', 'Pilot', '2015')

-- Insert into Service Tickets Table for Dealership
-- all primary keys or foreign keys