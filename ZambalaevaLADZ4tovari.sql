create database DZ4product;
create table providers (id serial primary key,
name_providers varchar, address_providers text);
insert into providers (name_providers, address_providers)
values ('ООО Ромашка', 'г. Буржуев, ул. Пушкина, д. 8'),
('ООО Березка', 'г. Грехов, ул. Ломоносова, д. 190'),
('ООО Березка', 'г. Павлодар, ул. Ленина, д. 1');
create table customers (id serial primary key,
name_customers varchar, address_customers text);
insert into customers (name_customers, address_customers)
values ('ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4');
create table payment (id serial primary key, payment_type varchar);
insert into payment (payment_type)
values ('Наложенный платеж'), ('Безналичный платеж'), ('Наличный платеж');
create table products (id serial primary key,
items varchar,
price numeric(10,2),
provider int references providers(id), 
stock_balance int4,
payment int references payment(id),
customer int references customers(id),
orders int4);
insert into products (items, price, provider, 
stock_balance, payment, customer, orders)
values 
('Зубная паста', 25.00, 1, 100, 1, 1, 100),
('Зубная нить', 300.00, 1, 34, 2, 1, 34),
('Ручки шариковые', 12.00, 1, 55, 3, 1, 55),
('Вода минеральная', 150.00, 2, 2, 3, 1, 2),
('Вода минеральная', 500.00, 3, 350, 2, 1, 300);
select * from products;
