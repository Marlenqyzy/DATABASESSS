create table costumers (
	Id INT,
	full_name VARCHAR(50),
	timestamp VARCHAR(50),
	delivery_address VARCHAR(50),
	primary key(Id)

);
insert into costumers (Id, full_name, timestamp, delivery_address) values (1, 'Coleen Crichten', '11:42 PM', '9 Kim Point');
insert into costumers (Id, full_name, timestamp, delivery_address) values (2, 'Mair MattiCCI', '6:05 PM', '5 Straubel Parkway');
insert into costumers (Id, full_name, timestamp, delivery_address) values (3, 'Wilmar Mabey', '3:35 PM', '70417 Arkansas Drive');
insert into costumers (Id, full_name, timestamp, delivery_address) values (4, 'Royal Muckart', '1:19 PM', '48992 Parkside Street');
insert into costumers (Id, full_name, timestamp, delivery_address) values (5, 'Myrilla Caplan', '6:22 AM', '1582 Dunning Plaza');
UPDATE costumers SET timestamp = '10:30 PM' WHERE Id = 1;
DELETE FROM costumers WHERE Id = 1;

create table orders (
	code VARCHAR(50),
	costumer_id INT,
	total_sum INT,
	is_paid VARCHAR(50),
	primary key(code),
	foreign key(costumer_id) references costumers
);
insert into orders (code, costumer_id, total_sum, is_paid) values ('24385-924', 1, 1, true);
insert into orders (code, costumer_id, total_sum, is_paid) values ('66685-1011', 2, 2, true);
insert into orders (code, costumer_id, total_sum, is_paid) values ('68703-111', 3, 3, true);
insert into orders (code, costumer_id, total_sum, is_paid) values ('49738-723', 4, 4, true);
insert into orders (code, costumer_id, total_sum, is_paid) values ('49884-071', 5, 5, false);
UPDATE orders SET is_paid = false WHERE total_sum > 3;
DELETE FROM orders WHERE total_sum = 1;

create table products (
	Id INT,
	name VARCHAR(50),
	description VARCHAR(50),
	price VARCHAR(50),
	primary key(Id)

);
insert into products (Id, name, description, price) values (10, 'Tanny', 'Vinyl', '$3.83');
insert into products (Id, name, description, price) values (27, 'Drusie', 'Aluminum', '$1.80');
insert into products (Id, name, description, price) values (24, 'Gayleen', 'Wood', '$2.16');
insert into products (Id, name, description, price) values (41, 'Thom', 'Rubber', '$3.67');
insert into products (Id, name, description, price) values (15, 'Pyotr', 'Stone', '$4.30');

create table order_items (
	order_code VARCHAR(50),
	product_id INT,
	quantity INT,
    foreign key(order_code) references orders,
    foreign key(product_id) references products
);
insert into order_items (order_code, product_id, quantity) values ('24385-924', 10, 1);
insert into order_items (order_code, product_id, quantity) values ('66685-1011', 24, 2);
insert into order_items (order_code, product_id, quantity) values ('68703-111', 27, 3);
insert into order_items (order_code, product_id, quantity) values ('49738-723', 41, 4);
insert into order_items (order_code, product_id, quantity) values ('49884-071', 15, 5);


