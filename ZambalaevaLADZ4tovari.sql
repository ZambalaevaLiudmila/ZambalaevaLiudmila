create database DZ4product;
create table providers (id serial primary key,
name_providers varchar, address_providers text);
insert into providers (name_providers, address_providers)
values ('ÎÎÎ Ðîìàøêà', 'ã. Áóðæóåâ, óë. Ïóøêèíà, ä. 8'),
('ÎÎÎ Áåðåçêà', 'ã. Ãðåõîâ, óë. Ëîìîíîñîâà, ä. 190'),
('ÎÎÎ Áåðåçêà', 'ã. Ïàâëîäàð, óë. Ëåíèíà, ä. 1');
create table customers (id serial primary key,
name_customers varchar, address_customers text);
insert into customers (name_customers, address_customers)
values ('ÎÎÎ Ðîãà è Êîïûòà', 'ã. Äåðåâÿííûé, óë. Ñìèðíîâà, ä. 4');
create table payment (id serial primary key, payment_type varchar);
insert into payment (payment_type)
values ('Íàëîæåííûé ïëàòåæ'), ('Áåçíàëè÷íûé ïëàòåæ'), ('Íàëè÷íûé ïëàòåæ');
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
('Çóáíàÿ ïàñòà', 25.00, 1, 100, 1, 1, 100),
('Çóáíàÿ íèòü', 300.00, 1, 34, 2, 1, 34),
('Ðó÷êè øàðèêîâûå', 12.00, 1, 55, 3, 1, 55),
('Âîäà ìèíåðàëüíàÿ', 150.00, 2, 2, 3, 1, 2),
('Âîäà ìèíåðàëüíàÿ', 500.00, 3, 350, 2, 1, 300);
select * from products;
