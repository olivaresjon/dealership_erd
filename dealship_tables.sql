create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(50),
	phone VARCHAR(10),
	customer_car VARCHAR(50)
);

create table sales_person (
	salesperson_id SERIAL primary key,
	sales_person VARCHAR(100),
	start_date DATE,
	phone VARCHAR(10),
	car_sold VARCHAR(100)
);


create table car_inventory (
	inventory_id SERIAL primary key,
	car_name VARCHAR(100),
	car_year VARCHAR(100),
	car_price numeric(10,2)
);


create table invoice (
	invoice_id SERIAL primary key,
	customer_first VARCHAR(50),
	customer_last VARCHAR(50),
	sale_date DATE,
	price numeric(10,2),
	customer_id INTEGER,
	salesperson_id INTEGER,
	inventory_id INTEGER,
	sold_car VARCHAR(100),
	foreign key(customer_id) references customer(customer_id),
	foreign key(salesperson_id) references sales_person(salesperson_id),
	foreign key(inventory_id) references car_inventory(inventory_id)
);

create table service_records (
	record_id SERIAL primary key,
	customer_first VARCHAR(50),
	customer_last VARCHAR(50),
	date_completed DATE,
	part_price numeric(10,2),
	part_name VARCHAR(100),
	mechanic_name VARCHAR(100)
);

create table service_ticket (
	ticket_id SERIAL primary key,
	problem_desc VARCHAR(100),
	customer_name VARCHAR(100),
	customer_phone VARCHAR(100),
	car_name VARCHAR(100),
	customer_id INTEGER,
	record_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(record_id) references service_records(record_id)
);

create table parts (
	part_id SERIAL primary key,
	part_name VARCHAR(100),
	part_price VARCHAR(100),
	ticket_id INTEGER,
	foreign key(ticket_id) references service_ticket(ticket_id)
);

create table mechanic (
	mechanic_id SERIAL primary key,
	mechanic_number VARCHAR(10),
	mechanic_name VARCHAR(100),
	ticket_id INTEGER,
	foreign key(ticket_id) references service_ticket(ticket_id)
);