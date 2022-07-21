create database filmsytezlaedition;
set datestyle 
	  to iso,dmy;
create table country (
    primary key (id),
    id 			    serial 	    not null, 
    place_name  varchar
); 
insert into country (place_name) 
    values 
          ('Россия'), 
          ('США'), 
          ('Китай'), 
          ('Корея'), 	
          ('Индия'),
          ('Япония'), 
          ('Франция') 
	;
create table directors (
    primary key (id),
    id 			    serial, 
    full_name 	varchar,
    birthday    date, 
    reward 		  text
); 
insert into directors (full_name, birthday, reward) 
	  values 
          ('Kevin Smith', '02/08/1970', '	Inkpot Award (2018)' ),
          ('Victor Fleming', '23/02/1889', 'Academy Award for Best Director (1940)'), 
          ('Marc Preston Webb', '31/08/1974', 'MTV Video Music Award for Best Direction (2009)'), 
          ('Joachim Roenning', '30/05/1972', 'Nominated- Amanda Award for Best Direction (2012)'), 
          ('Lana Wachowski', '21/06/1965', 'Saturn Award for Best Director (1999)')
	;
create table grade (
    primary key (id),
    id 			    int 	    not  null, 
    title 		  varchar
	);
insert into grade (id, title) 
	  values 
          (-3,  'horrible'), 
          (-2, 'bad'), 
          (-1, 'not good'), 
          (0, 'boring'), 
          (1, 'not bad'),
          (2, 'good'), 
          (3, 'excellent') 
	;
create table genre (
    primary key (id),
    id 						        serial 		  not null, 
    title_of_genre 			  varchar, 
    description_of_genre 	text
	); 
insert into genre (title_of_genre, description_of_genre) 	
	  values 
          ('приключения', 'Приключенческие фильмы – жанр 
                кинематографического искусства, характерными особенностями которого являются дух авантюризма, 
                стремительность развития сюжета и его неожиданные повороты, преувеличенность переживаний, 
                а также отчетливое деление персонажей на хороших и плохих.'), 
          ('боевик', 'Боевик – кинематографический жанр, в котором главный герои или герои сталкиваются с рядом проблем, 
                решить которые, не прибегнув к насилию, не удается. '), 
          ('мелодрама', 'Фильмы мелодрамы – жанр кинематографа с усиленной чувственной и эмоциональной составляющей,
                заметно превалирующей над детализацией персонажей, которые зачастую изображаются схематично и стереотипно.'), 
          ('ужасы', 'Фильмы ужасов – произведения кинематографического искусства, основной задачей которых 
                является вызывать у зрителей негативную эмоциональную реакцию, играя на 
                примитивных чувствах страха и отвращения.'), 
          ('комедия', 'Словом комедия (от греческого «komodia») характеризовали вызывающие смех спектакли, 
                а после зарождения кинематографа и фильмы, призванные поднимать настроение и вызывать у зрителя смех.')
	; 
create table film_list (
    primary key (id),
    id 			      serial 		  not null,  
    title 		    varchar, 
    description   text, 
    country 	    int 		    references country (id), 
    director    	int 		    references directors(id), 
    actors 		    text,
    year 		      int, 
    film_genre 	  int 		    references genre(id) , 
    film_grade 	  int 		    references grade(id));
insert into film_list (title, description, country, director, actors, year, film_genre, film_grade) 
	  values 
          ('Бивень (2014)','Журналист Уоллес Брайтон уехал брать интервью и исчез навсегда.
               Его друг вместе с девушкой Уоллеса отправляется на поиски. Поиски приводят пару к полицейскому в отставке, 
              который много лет занимался поиском пропавших людей и который рассказывает им, что есть некая закономерность 
              в пропаже людей. Люди пропадают, а потом находят их обезображенные кости. Полицейский думает, что все это дело
              рук серийного убийцы. Считая, что Уоллес каким-то образом попал в его руки, троица идет по следу маньяка, 
              даже не представляя себе, что правда, которую им предстоит узнать, настолько ужасна, что в нее просто 
              невозможно поверить.', 2, 1, 'Майкл Паркс, Джастин Лонг, Дженезис Родригес, Хэйли Джоэл Осмент, 
              Джонни Депп, Харли Моренштейн, Ральф Гармен, Дженнифер Швалбах Смит, Харли Куинн Смит, Лили-Роуз Депп', 2014, 4, -3), 
          ('Унесённые ветром (1939)', 'Могучие ветры Гражданской войны в один миг уносят беззаботную юность южанки Скарлетт О`Хара,
              когда привычный шум балов сменяется грохотом канонад на подступах к родному дому. Для молодой женщины, вынужденной бороться
               за новую жизнь на разоренной земле, испытания и лишения становятся шансом переосмыслить идеалы, 
              обрести веру в себя и найти настоящую любовь.', 2, 2, 'Вивьен Ли, Кларк Гейбл, Лесли Говард, Оливия Де Хэвилленд,
              Оскар Полк, Хэтти МакДэниел, Эверетт Браун, Томас Митчелл, Барбара О’Нил, Эвелин Кийес', 1939, 3, 3), 
          ('500 дней лета (2009)', 'Главный герой работает в агентстве, выпускающем поздравительные открытки. 
              Он придумывает все те забавные подписи, которые мы с Вами читаем на них. Молодой человек влюбляется в 
              свою коллегу и решает, что она - «та, единственная». Но 500 дней их отношений показывают герою, что путь 
              к счастью непредсказуем, неконтролируем и - невероятно забавен!',2, 3,'Джозеф Гордон-Левитт, Зои Дешанель, 
              Джеффри Аренд, Хлоя Грейс Морец, Мэттью Грей Гублер, Кларк Грегг, Патриша Белчер, Рейчел Бостон, Минка Келли, 
              Чарльз Уолкер', 2009, 5, 2), 
          ( 'Пираты Карибского моря: Мертвецы не рассказывают сказки (2017)', 'Исчерпавший свою удачу капитан Джек Воробей обнаруживает,
              что за ним охотится его старый неприятель, ужасный капитан Салазар и его мертвецы. Они только что сбежали
               из Дьявольского треугольника и намерены уничтожить всех пиратов, включая Джека. Поможет спастись лишь могущественный 
              артефакт — трезубец Посейдона, который дарует своему обладателю полный контроль над морями.', 2, 4, 'Джонни Депп, 
              Хавьер Бардем, Джеффри Раш, Брентон Туэйтс, Кая Скоделарио, Кевин МакНэлли, Голшифте Фарахани, Дэвид Уэнэм, Стивен Грэм, 
              Энгус Барнетт', 2017, 1, 1) , 
          ('Матрица: Революция (2003)', 'Пока армия машин пытается уничтожить Зион, его жители из последних сил держат оборону.', 2, 
              5, 'Киану Ривз, Хьюго Уивинг, Кэрри-Энн Мосс, Лоренс Фишбёрн, Хэролд Перрино, Джина Торрес, Джада Пинкетт Смит, 
              Моника Беллуччи, Гарри Дж. Ленникс, Мэри Элис', 2003, 2, 0)
; 
create table subscription (
    primary key (id),
    id 			      serial 		      not null, 
    title 		    varchar, 
    description   text,
    price 		    numeric (10, 2)
);
insert into subscription (title, description, price) 
	  values 
          ('one month', 'полный доступ ко всем фильмам на один месяц', 12), 
          ('three months','полный доступ ко всем фильмам на 3 месяца', 35), 
          ('half year', 'полный доступ ко всем фильмам на полгода', 67), 
          ('nine months', 'полный доступ ко всем фильмам на 9 месяцев', 95), 
          ('full year', 'полный доступ ко всем фильмам на целый год', 120)
	; 
create table news (
    primary key (id),
    id 				      serial 			   not null, 
    title 			    varchar, 
    news 			      text, 
    date_of_news 	  date, 
    film_tag 		    int 			     references film_list(id)
); 
insert into news (title, news, date_of_news, film_tag) 	
	  values 
          ('В кинотеатрах Nescafe IMAX и Балтика отметят "ночь ужасов"', '1 и 2 ноября 2014 года компания "Киносфера" организует очередной 
              киномарафон в московских кинотеатрах Nescafe IMAX и Балтика. Участников ждут сеансы самых захватывающих новых фильмов ужасов,
               а так же множество развлечений и сюрпризов. 1 ноября - Кинотеатр Nescafe IMAX: "Дракула" в формате IMAX, "Обитель проклятых", 
              "Бивень". Стоимость билетов от 990 руб. Их можно приобрести на сайте www.nescafe-imaxcinema.ru.
              2 ноября- Кинотеатр "Балтика": "Обитель проклятых", "Галлоуз Хилл", "Темнее ночи". Стоимость билетов 700 рублей. 
              Билеты можно приобрести на сайте Кинотеатра "Балтика".
              Сбор гостей с 22.00. Начало шоу программы 23.00', '22/10/2014', 1), 
          ('«Унесенные ветром» вернутся на HBO Max с предисловием профессора кинематографии', 'Ведущая передачи о кино 
              «Немые субботние вечера», профессор Чикагского университета кинематографии Жаклин Стюарт представит фильм «Унесенные ветром», 
              когда проект вернется на HBO Max. Она прокомментирует исторический контекст сюжета и объяснит, какие проблемы поднимаются в
               картине, которая была удалена из каталога стрим-сервиса 10 июня. В остальном лента останется без изменений.', '15/06/2020', 2 ), 
          ('Актер из «500 дней лета» сыграет в сериале создателя «Достать ножи»', 'Актер Джозеф Гордон-Левитт, известный по фильмам
               «500 дней лета», «Начало» и «10 причин моей ненависти», сыграет вместе с актрисой Наташей Лионн в детективном сериале 
              Poker Face режиссера дилогии «Достать ножи» Райана Джонсона. Об этом пишет Variety. Подробности сюжета и дату премьеры 
              пока не сообщают.
              Это первый телесериал Джонсона, в котором он и создатель, и сценарист, и постановщик. Ранее он снимал полнометражные фильмы,
               такие как «Звездные войны: Последние джедаи», «Петля времени», а также сериал «Во все тяжкие».
              Актер Джозеф Гордон-Левитт также параллельно снимается в двух проектах. Это биографический сериал King of Late Night Дэвида 
              Милча и Джея Роача, а также психологический триллер «Белая ночь» Анне Севитски. Кроме того, сейчас выходит сериал «На взводе:
               Битва за Uber». В нем Гордон-Левитт играет основателя компании Uber.', '13/04/2020', 3), 
          ('Кассовые сборы "Пиратов Карибского моря 5" превысили 500 миллионов', 'Мировые кассовые сборы фильма "Пираты Карибского моря 5:
               Мертвецы не рассказывают сказки" превысили 500 миллионов долларов. Большую часть этой суммы - 386 миллионов долларов картина 
              заработала за пределами Северной Америки, в домашнем прокате ее сборы оказались весьма скромными - 114 миллионов долларов.
              Самые внушительные сборы в международном прокате фильм продемонстрировал в Китае - более 67 миллионов долларов. 
              На втором месте оказалась Россия, обеспечившая ему чуть более 19 миллионов долларов. 11,5 миллионов долларов пятая 
              серия популярной франшизы заработала в Южной Корее. В остальных странах ей не удалось показать сколько-нибудь выдающихся результатов.', 
              '05/06/2017', 4), 
          ('"Матрица-3" собрала $204 млн', 'За первый уикенд проката фильм "Матрица: революция" собрал в США $50,2 млн, 
              что на 45% меньше сборов от предыдущей серии "Матрица: перезагрузка" (The Matrix: Reloaded), которой первый уикенд проката 
              принес $91,8 млн. В целом по первым дням проката дебют "Матрицы-3" в США также выглядит неважно: за первые пять дней 
              (со дня презентации третьей серии фильма и до конца уикенда) сборы в США составили $85,5 млн, что на 37% меньше, чем у 
              "Перезагрузки" за первые будни плюс уикенд ($135 млн за четыре дня). Несмотря на бледный дебют третьей "Матрицы" в США, 
              где падение интереса к фильму заметно особенно четко, прибыль от проката по всему миру (107 стран) составила $204 млн 
              с момента презентации. Производство каждой из двух последних "Матриц" обошлось Warner Bros. более чем в $175 млн.
              В итоге вторая часть собрала $735 млн. ', '12/11/2003', 5)
	; 
create table private_office (
    primary key (id),
    id 					        uuid 			     DEFAULT gen_random_uuid(), 
    name 				        varchar, 
    surname 			      varchar, 
    birth 				      date, 
    email 				      varchar, 
    user_subscription 	int 			    references subscription(id), 
    payment 			      boolean, 
    favorite_films 		  int 			    references film_list(id) 
); 
insert into private_office (name , surname , birth , email, user_subscription , payment , favorite_films)
	  values 
          ('Aleksandr', 'Petrov', '01/02/1985', 'petrov85al@mail.ru', 1, 'yes', 5),
          ('Viktor', 'Golovko', '02/03/1990', 'golovkovik90@mail.ru', 2,'yes', 1),
          ('Dmitrii', 'Bolohov', '03/04/1988', 'bolodima88@mail.ru', 3,'yes', 5),
          ('Viatcheslav', 'Fedotov', '04/05/1994', 'fedotovslava94@mail.ru', 4,'yes', 4), 
          ('Olga', 'Viktorova', '05/06/1992', 'svetlyakovaolya92@mail.ru', 5,'yes', 3)
	; 
update private_office set favorite_films = 2 where email = 'petrov85al@mail.ru';
create table comments (
    primary key (id),
    id 			    serial 		    not null,  
    user_name 	uuid 		      DEFAULT gen_random_uuid() 		    references private_office(id),
    film 		    int 		      references film_list(id), 
    grade 		  int 		      references grade(id), 
    comment 	  text
);
insert into comments (user_name, film, grade, comment) 
	  values 
        ((select id 
              from private_office 
              where email = ' petrov85al@mail.ru'), 1, -3, 'самый ужасный фильм в истории кинематографа'), 
        ((select id 
              from private_office 
              where email ='golovkovik90@mail.ru'), 2, 2, 'да, нравится фильмы этого режиссёра'), 
        ((select id 
              from private_office 
              where email = 'bolodima88@mail.ru'), 3,  3, 'супер фильм'), 
        ((select id 
              from private_office 
              where email = 'fedotovslava94@mail.ru'), 4, 1, 'фильм на один раз'),
        ((select id 
              from private_office 
              where email = 'svetlyakovaolya92@mail.ru'), 5,2 , 'фильм норм')
		;
update comments 
	  set user_name = 	
		    (select id 
              from private_office 
              where email = 'petrov85al@mail.ru') 
	  where id = 1
;
select 	
      private_office.id as user_id, 
      private_office.name, 
      private_office.surname, 
      private_office.birth, 
      private_office.email, 
      private_office.user_subscription, 
          subscription.title as title_of_subscription, 
          subscription.description as description_of_subscription,
          subscription.price, 
      private_office.payment, 
      private_office.favorite_films, 
          film_list.title, 
              news.title, 
              news.news, 
              news.date_of_news, 
              news.film_tag, 
          film_list.description,
          film_list.country, 
              country.place_name, 
          film_list.director, 
              directors.full_name, 
              directors.birthday, 
              directors.reward, 
          film_list.actors, 
          film_list.year, 
          film_list.film_genre,
              genre.title_of_genre, 
              genre.description_of_genre,
          film_list.film_grade, 
              grade.title as grade_title, 
      comments.user_name, 
      comments.film, 
      comments.grade, 
      comments.comment
from comments
      right 	join private_office 	  on comments.user_name 				        = private_office.id 
      right 	join subscription 		  on private_office.user_subscription   = subscription.id
      right 	join film_list 			    on private_office.favorite_films 	    = film_list.id
      right 	join grade 				      on film_list.film_grade 			        = grade.id
      right 	join country 			      on film_list.country 				          = country.id
      right 	join directors 			    on film_list.director 				        = directors.id  
      right 	join genre 				      on film_list.film_genre 			        = genre.id 
      left 	  join news 				      on film_list.id 					            = news.film_tag
	;
