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

insert into sales_person(
	salesperson_id,
	sales_person,
	start_date,
	phone,
	car_sold
) values (
	1,
	'CJ',
	'2019-09-05',
	0987654321,
	'Toyota Camry'
);

insert into car_inventory(
	inventory_id,
	car_name,
	car_year,
	car_price
) values (
	1,
	'Dogde Charger',
	'2018-05-15',
	22000.00	
);

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
	32000.00,
	1,
	1,
	1,
	'Dodge Charger'
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
	'Juan',
	'Rodriguez',
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
	'Mazda Miata',
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
	'Jack Mack',
	1
);