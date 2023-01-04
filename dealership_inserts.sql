insert into customer(
	customer_id,
	first_name,
	last_name,
	address,
	phone,
	customer_car
) values (
	1,
	'Jonathan',
	'Olivares',
	'Martin luther King Rd, Ocala Fl 34473',
	'1234567890',
	'2020 Kia Sportage'
);

create or replace function add_sales_person(_sales_person_id INTEGER, _sales_person VARCHAR, _state_date DATE, _phone VARCHAR, _car_sold VARCHAR)
returns void
as $MAIN$
begin
	insert into sales_person(salesperson_id ,sales_person ,start_date , phone, car_sold)
	values (_sales_person_id, _sales_person, _state_date, _phone, _car_sold);
end;
$MAIN$
language plpgsql;

select add_sales_person(2,'CJ','2020-10-01','1234567892','Toyota');

select * from sales_person;

create or replace function add_car_inventory(_inventory_id INTEGER, _car_name VARCHAR, _car_year DATE, _car_price numeric)
returns void
as $MAIN$
begin
	insert into car_inventory(inventory_id, car_name, car_year, car_price)
	values (_inventory_id , _car_name , _car_year , _car_price);
end;
$MAIN$
language plpgsql;

select add_car_inventory(1,'Toyota','2015-02-18',17000.00);

select * from car_inventory ci;

insert into invoice (
	invoice_id,
	customer_first,
	customer_last,
	sale_date,
	price,
	customer_id,
	salesperson_id,
	inventory_id,
	sold_car
) values (
	1,
	'Jonathan',
	'Olivares',
	'2021-10-1',
	20000.00,
	1,
	2,
	1,
	'Toyota Camry'
);

insert into service_records (
	record_id,
	customer_first,
	customer_last,
	date_completed,
	part_price,
	part_name,
	mechanic_name
) values (
	1,
	'Jonathan',
	'Olivares',
	'2021-11-21',
	11.99,
	'coolant hose',
	'Jack Harmanson'
);

insert into service_ticket (
	ticket_id,
	problem_desc,
	customer_name,
	customer_phone,
	car_name,
	customer_id,
	record_id
) values (
	1,
	'Oil Leak',
	'Jon',
	'1352-696-9696',
	'Camry',
	1,
	1
);


insert into parts (
	part_id,
	part_name,
	part_price,
	ticket_id
) values (
	1,
	'Oil Pan',
	49.99,
	1
);

insert into mechanic (
	mechanic_id,
	mechanic_number,
	mechanic_name,
	ticket_id
) values (
	1,
	1321321123,
	'Jack Harmanson',
	1
);