--create database Zadanie2;

--create table client (id uuid DEFAULT gen_random_uuid() primary key, 
--first_name varchar, last_name varchar, phone varchar, email varchar, 
--address text, create_at date, confirmed boolean, country_id int, balance numeric(10,2) );

--create table product (id serial4 primary key, name_product varchar, description_product text, 
--amount int4, price numeric(10,2), provider varchar, address_provider text, 
--country_provider varchar); 

--create table basket (id serial primary key, id_client uuid DEFAULT gen_random_uuid(), id_product varchar);

--create table country (id serial primary key, name varchar, short_code varchar);

--create table provider (id serial primary key, name_provider varchar, address_provider text,
--country_provider varchar);

--alter table product drop column address_provider, drop column country_provider;

--insert into country (name, short_code) values 
--('Россия', 'RUS'), ('Соединенные Штаты Америки', 'USA'),
--('Словакия', 'SVK'),
--('Япония', 'JPN'),
--('Таиланд', 'THA'),
--('Польша', 'POL'),
--('Монголия', 'MNG'),
--('Латвия', 'LVA'),
--('Китай', 'CHN'),
--('Казахстан', 'KAZ');
--select * from country;

--alter table provider alter column country_provider type int USING (country_provider ::integer); 
--alter table provider add constraint provider_fk1 foreign key (country_provider) references country(id);

--insert into provider (name_provider , address_provider ,
--country_provider) values 
--('Derevo', 'ul.Mira 6-85, Novosibirsk', 1),
--('Games', 'ul.Nivaivo 7-854, Kioto', 4),
--('GamesBig', 'ul.Xinguo 125-56-44, Shenyang', 9), 
--('GamesPro', 'ul.East Vestern 45, Albany ', 2), 
--('Starship', 'ul.WestLake 26, Chicago', 2), 
--('WARCraft', 'ul.FineGout 102, California', 2), 
--('QQgame', 'ul.XionGua 12-144, Shenyen', 9), 
--('GamesChen', 'ul.Ningguo 1298, Woohao', 9), 
--('CS:GO', 'ul.Holand 125, New York', 2), 
--('NES', 'ul.Kanavata 56-47, Tokio', 4);
--select * from provider;

--alter table client add constraint client_fk1 foreign key (country_id) references country(id);
--insert into client (first_name , last_name , phone , email , 
--address , create_at , confirmed , country_id , balance)
--values 
--('Viktor', 'Petrov', '89992568193', 'petrov2000@mail.ru', 'ul.Sokolniki 8-89', '02/02/2021', 'yes', 1, 3500.00),
--('Lev', 'Titov', '42156345628', 'titovgame99@gmail.com', 'ul.Mira 85-12', '03/03/2021', 'yes', 3, 2000.00),
--('Hiro', 'Nakayama', '8108131264488', 'hirohero88@gmail.com', 'ul.nakava 81-74', '04/04/2021', 'yes', 4, 8000.00), 
--('Sakda', 'Tassa', '810664692856', 'tassasakda96@gmail.com', 'ul. Hiksan 45-89', '05/05/2021', 'yes', 5, 1200), 
--('Bronislav', 'Komorovskii', '48516671636', 'komorovbronya@gmail.com', 'ul. prospekt pobedi 4-80', '06/06/2021', 'yes', 6, 2500), 
--('Hunbish', 'Byamba', '8109765628942', 'byamhun97@gmail.com', 'ul.haksagaan 8-54', '07/07/2021', 'yes', 7, 1000.00), 
--('Vitalia', 'Varnane', '3716789012', 'varnanevita99@gmail.com', 'ul.mira 4-5', '08/08/2021', 'yes', 8, 1500.00),
--('Syan', 'Shoo', '1349562809743', 'shoosyan1999@gmail.com', 'ul.Xindao 45-87', '09/09/2021', 'yes', 9, 8000.00),
--('Kim', 'Ospanov', '71075732658', 'ospanovkimkim97@gmail.com', 'ul.Kultuk 45-60', '10/10/2021', 'yes', 10, 1200.00 ), 
--('John', 'Smit', '781017754895', 'johnsmitgame99@gmail.com', 'ul.bestwest 5', '07/07/2022', 'no', 2, 150);
--select * from client;

--alter table product alter column provider type int USING (provider ::integer);
--alter table product add constraint provider_fk2 foreign key (provider) references provider(id);
--insert into product (name_product , description_product , 
--amount , price, provider)
--values 
--('Дальнобойщики 2', '-компьютерная игра в жанре симулятора водителя-дальнобойщика с элементами экономической стратегии, разработанная студией Derevo', 100500, 1000.00,  1),
--('Dark Souls', ' компьютерная игра в жанре action/RPG. Действие игры разворачивается в вымышленном королевстве Лордран, напоминающем средневековую Европу.', 200000, 2500, 2),
--('Candleman', 'это инди-игра и мистическая головоломка и платформер, выпущенная независимой китайской студией',500000, 2300, 3),
--('Age of Empires II: Definitive Edition','компьютерная игра в жанре стратегии реального времени', 1500000, 3300, 4),
--('Dance Central','музыкальная видеоигра для Xbox 360, которая использует датчик движений Kinect.', 1000000, 5000.00, 5),
--('Dementium II', 'видеоигра в жанрах survival horror и шутер от первого лица', 250000, 4500.00, 6),
--('Final Fantasy VII (Famicom)','неофициальный ремейк популярной японской ролевой игры Final Fantasy VII', 700000, 4500, 7),
--('Ninja Wars', 'браузерная онлайн-игра (BBMMORPG) в стиле аниме, распространяемая по модели free-to-play. ',600000, 10, 8),
--('Counter-Strike: Global Offensive', 'многопользовательская компьютерная игра', 1000000, 5000.00, 9),
--('Star Ocean','научно-фантастическая серия игр в жанрах японская ролевая игра и action/RPG', 150000, 4000, 10);
--select * from product;


--alter table basket add constraint id_client_fk1 foreign key (id_client) references client(id);
--alter table basket alter column id_product type int USING (id_product ::integer);
--alter table basket add constraint id_product_fk1 foreign key (id_product) references product(id);

--insert into basket (id_client, id_product) values
--((select id from client where email = 'petrov2000@mail.ru'), 1),
--((select id from client where email = 'titovgame99@gmail.com'), 2),
--((select id from client where email = 'hirohero88@gmail.com'), 3),
--((select id from client where email = 'tassasakda96@gmail.com'), 4),
--((select id from client where email = 'komorovbronya@gmail.com'), 5),
--((select id from client where email = 'byamhun97@gmail.com'), 6),
--((select id from client where email = 'varnanevita99@gmail.com'), 7),
--((select id from client where email = 'shoosyan1999@gmail.com'), 8),
--((select id from client where email = 'ospanovkimkim97@gmail.com'), 9),
--((select id from client where email = 'johnsmitgame99@gmail.com'), 10);

--select * from basket;

--select product.id, product.name_product, product.description_product , 
--product.amount , product.price , product.provider , 
--provider.id as provider_id, provider.name_provider , provider.address_provider , 
--provider.country_provider ,
--country."name" , country.short_code 
--from product
--right join provider on product.provider=provider.id
--
--left join country on provider.country_provider=country.id;