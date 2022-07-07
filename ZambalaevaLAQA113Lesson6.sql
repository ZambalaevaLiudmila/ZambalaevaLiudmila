--create database Lesson_6;
--create table workers (
--id serial primary key, 
--name_table uuid DEFAULT gen_random_uuid(),
--first_name varchar, 
--last_name varchar, 
--second_name varchar, 
--day_of_birth date, 
--position varchar, 
--descriptiob_position text, 
--salary float4, 
--project varchar, 
--project_description text, 
--type_of_penalty varchar, 
--penalty_points float4, 
--director varchar, 
--position_director varchar);
--select * from workers;

--create table players (id uuid DEFAULT gen_random_uuid() primary key, 
--first_name varchar, 
--last_name varchar, 
--second_name varchar, 
--day_of_birth date);

--create table position_in_work (id serial primary key, position varchar, 
--description_position text); 
--
--create table salary (id serial primary key, salary float4);
--
--create table project (id serial primary key, 
--project varchar, 
--project_description text);
--
--create table penalty (id serial primary key,
--type_of_penalty varchar, 
--penalty_points float4 );
--
--create table director (id serial primary key,
--director varchar, 
--position_director varchar);

--alter table workers drop column first_name, drop column last_name, 
--drop column second_name, drop column day_of_birth,
--drop column descriptiob_position, drop column project_description, 
--drop column penalty_points, drop column position_director;

--alter table workers alter column position type int USING (position::integer); 
--alter table workers alter column salary type int; 
--alter table workers alter column project type int USING (project::integer); 
--alter table workers alter column type_of_penalty type int USING (type_of_penalty::integer);
--alter table workers alter column director type int USING (director::integer);

--alter table workers add constraint workers_fk foreign key (name_table) references players(id); 
--alter table workers add constraint workers_fk2 foreign key (position) references position_in_work(id);
--alter table workers add constraint workers_fk3 foreign key (salary) references salary(id);
--alter table workers add constraint workers_fk4 foreign key (project) references project(id);
--alter table workers add constraint workers_fk5 foreign key (type_of_penalty) references penalty(id);
--alter table workers add constraint workers_fk6 foreign key (director) references director(id);

--insert into players (first_name, last_name, second_name, day_of_birth)
--values 
--('Роман', 'Адамов', 'Станиславович', '21/06/1982'),
--('Игорь','Акинфеев','Владимирович', '08/04/1986'),
--('Маринато','Алвин','Гильерме', '12/12/1985'),
--('Ильзат','Ахметов','Тоглокович', '31/12/1997'),
--('Дмитрий','Баринов','Николаевич', '11/09/1996'),
--('Даниил','Глебов','Александрович', '03/11/1999'),
--('Александр','Головин','Сергеевич', '30/05/1996'),
--('Игорь','Дивеев','Сергеевич', '27/09/1999'),
--('Александр','Ерохин','Юрьевич', '13/11/1989'),
--('Вячеслав','Караваев','Сергеевич', '20/05/1995');

--insert into director (director, position_director)
--values
--('Алексей Березуцкий', 'ЦСКА тренер'),
--('Олег Веретенников', 'Рубин тренер'),
--('Игорь Шалимов', 'Урал тренер'),
--('Владимир Федотов', 'Сочи тренер'),
--('Виталий Кафанов', 'Ростов тренер');
--
--insert into penalty (type_of_penalty, penalty_points)
--values 
--('Нарушения, наказываемые штрафным ударом', 1 ),
--('Нарушения, наказываемые свободным ударом', 2),
--('Нарушения, наказуемые предупреждением', 3),
--('Нарушения, наказуемые удалением', 5);

--insert into position_in_work (position, description_position)
--values 
--('GK (ВРТ)', 'Голкипер/вратарь (от англ. Goalkeeper) — игрок, защищающий ворота команды, основной целью которого является — не пропустить, оставив свою ворота «на замке».'),
--('RB(ПЗ)/LB(ЛЗ)', 'правый защитник (от англ. Right Back)/левый защитник (от англ. Left Back) — крайние защитники, которые действуют справа/слева от центральных и располагаются почти на «бровке» поля. '),
--('CB/CD(ЦЗ)', 'центральный защитник (от англ. Centre Back, Central Defender) — игрок, специализирующийся на выполнении оборонительных функций, располагающийся вблизи центральной оси поля, рядышком со своей штрафной.'),
--('RWB(ПФЗ)/LWB(ЛФЗ)', 'правый фланговый защитник (от англ. Right WingBack)/левый фланговый защитник (от англ. Left WingBack). '),
--('CDM(ЦОП)', 'центральный опорный полузащитник (от англ. Centre Defensive Midfielders) – игрок центра поля, больше тяготеющий к оборонительным действиям. '),
--('CM(ЦП)', 'центральный полузащитник (от англ. Centre Midfielders) — игрок центра поля, способный быть равноценно полезным как в атакующих, так и в защитных построениях команды. '),
--('CAM(ЦАП)', 'центральный атакующий полузащитник (от англ. Centre Attacking Midfielder) — игроки, действующие максимально близко у штрафной соперника, способные любым своим действием обострить игру команды в атаке. '),
--('RM(ПП)/LM(ЛП)', 'правый полузащитник (от англ. Right Midfielder)/ левый полузащитник (от англ. Left Midfielder) — крайние полузащитники, действующие в непосредственной близости от боковой линии. '),
--('RF(ПФД)/CF(ЦФД)/LF(ЛФД)', 'правый форвард (от англ. Right Forward)/центральный форвард (от англ. Centre Forward)/ левый форвард (от англ. Left Forward) — оттянутые форварды, форварды — созидатели. '),
--('ST(ФРВ)', 'форвард/нападающий (от англ. Striker) – атакующий игрок, располагающийся ближе всех к воротам соперника. ');

--insert into project (project, project_description)
--values 
--('05/07/2022 Москва', 'Спортивное мероприятие «Праздник футбола» по футболу'),
--('День семьи 05/07/2022 Москва', 'Турнир по футболу, посвященный Дню семьи, любви и верности по футболу'),
--('07/07/2022 Хабаровск', 'Первенство Хабаровского края по футболу'),
--('Кубок Главы управы 10/07/2022 Москва ', 'Спортивный праздник На кубок Главы управы по футболу'),
--('Самбо-80 12/07/2022', 'Проведение турнира по мини футболу спортивно-досугового клуба «Самбо-80» по футболу');

--insert into salary (salary)
--values 
--(24.9),
--(20.7),
--(18.6),
--(17.3),
--(15.2),
--(13.8),
--(12.4);

insert into workers (name_table, position, salary, project, type_of_penalty, director)
values 
((select id from players where first_name = 'Роман'), 1, 1, 1, 1, 1);
((select id from players where last_name = 'Акинфеев'), 2, 1, 1, NULL, 1),
((select id from players where last_name = 'Алвин'), 3, 2, 2, NULL, 2),
((select id from players where last_name = 'Ахметов'), 4, 3, 2, 1, 2),
((select id from players where last_name = 'Баринов'), 5, 4, 3, 2, 3),
((select id from players where last_name = 'Глебов'), 6, 5, 3, 3, 3),
((select id from players where last_name = 'Головин'), 7, 6, 4, 4, 4),
((select id from players where last_name = 'Дивеев'), 8, 7, 4, 3, 4),
((select id from players where last_name = 'Ерохин'), 9, 2, 5, 2, 5),
((select id from players where last_name = 'Караваев'), 10, 3, 5, 1, 5);
