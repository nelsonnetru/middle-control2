# 7. В подключенном MySQL репозитории создать базу данных “Друзья человека”

CREATE SCHEMA `human_friends` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `human_friends`;

# 8. Создать таблицы с иерархией из диаграммы в БД

create table Animals (
	id INT PRIMARY KEY auto_increment,
	type VARCHAR(50) NOT NULL
);
insert into Animals (id, type) values (1, 'Home Animals');
insert into Animals (id, type) values (2, 'Pack Animals');

create table TypeAnimals (
	id INT PRIMARY KEY auto_increment,
	class INT NOT NULL,
	type VARCHAR(50) NOT NULL
);
insert into TypeAnimals (id, class, type) values (1, 1, 'Dog');
insert into TypeAnimals (id, class, type) values (2, 1, 'Cat');
insert into TypeAnimals (id, class, type) values (3, 1, 'Hamster');
insert into TypeAnimals (id, class, type) values (4, 2, 'Horse');
insert into TypeAnimals (id, class, type) values (5, 2, 'Camel');
insert into TypeAnimals (id, class, type) values (6, 2, 'Donkey');

create table Dog (
	id INT PRIMARY KEY auto_increment,
	home VARCHAR(50) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);


create table Cat (
	id INT PRIMARY KEY auto_increment,
	home VARCHAR(50) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

create table Hamster (
	id INT PRIMARY KEY auto_increment,
	home VARCHAR(50) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

create table Horse (
	id INT PRIMARY KEY auto_increment,
	zoo VARCHAR(19) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

create table Camel (
	id INT PRIMARY KEY auto_increment,
	zoo VARCHAR(19) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

create table Donkey (
	id INT PRIMARY KEY auto_increment,
	zoo VARCHAR(19) NOT NULL,
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

# 9. Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения

insert into Dog (id, home, nickName, birthDate, commands) values (1, '97 Butternut Junction', 'Captain', '2022-11-02 12:39:51', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (2, '3818 Pennsylvania Center', 'Wizard', '2022-09-12 08:18:06', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (3, '6600 Fairfield Way', 'Buddy', '2019-05-25 10:34:32', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (4, '517 Drewry Way', 'Phoenix', '2019-03-13 04:08:46', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (5, '272 Fair Oaks Junction', 'Phoenix', '2019-05-30 04:19:05', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (6, '6207 Meadow Ridge Point', 'Ace', '2018-11-05 17:30:01', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (7, '352 Carioca Terrace', 'King', '2021-12-10 20:14:14', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (8, '0 Porter Point', 'King', '2018-04-15 08:04:53', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (9, '7 Bluestem Court', 'Joker', '2018-05-30 03:26:27', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (10, '0837 Maryland Point', 'Oracle', '2021-02-11 12:35:12', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (11, '47801 Meadow Valley Crossing', 'Joker', '2019-04-20 22:20:38', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (12, '444 Twin Pines Terrace', 'Shadow', '2019-09-07 00:49:49', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (13, '4920 Algoma Pass', 'Flash', '2020-11-12 00:07:36', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (14, '81789 Haas Avenue', 'Ace', '2023-05-18 21:41:48', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (15, '90 Cardinal Street', 'Shadow', '2019-09-30 07:33:10', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (16, '05 Morningstar Way', 'Ninja', '2019-11-06 21:01:06', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (17, '1 Springs Trail', 'Shadow', '2019-08-18 16:41:46', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (18, '69 Express Point', 'Shadow', '2018-02-20 12:49:11', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (19, '4969 Rieder Plaza', 'King', '2021-04-03 06:27:24', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (20, '13 Prairieview Avenue', 'Phoenix', '2019-05-23 14:03:10', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (21, '4787 Parkside Hill', 'Viper', '2021-01-17 16:40:17', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (22, '37464 Melby Terrace', 'Oracle', '2021-08-04 20:22:56', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (23, '30 Walton Terrace', 'Zeus', '2018-03-13 14:54:32', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (24, '43083 Hayes Lane', 'Captain', '2022-03-08 20:40:23', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (25, '7098 Toban Crossing', 'Ranger', '2017-10-27 09:21:09', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (26, '51551 Springs Drive', 'Ace', '2018-07-22 23:25:19', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (27, '168 Old Gate Place', 'Duke', '2020-11-14 07:52:53', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (28, '096 Rusk Circle', 'Zeus', '2019-12-31 01:15:27', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (29, '223 Chinook Place', 'Maverick', '2021-06-09 19:04:12', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (30, '0679 Delaware Junction', 'Duke', '2021-08-13 17:43:15', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (31, '4 Londonderry Place', 'Shadow', '2021-05-25 06:43:38', 'walk;sleep;wake');
insert into Dog (id, home, nickName, birthDate, commands) values (32, '7 Swallow Terrace', 'Joker', '2020-05-26 17:57:02', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (33, '68 Golf Course Parkway', 'Hawk', '2021-07-30 23:10:32', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (34, '6 Warbler Drive', 'Guru', '2021-08-22 04:21:52', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (35, '7798 Rutledge Pass', 'Maverick', '2018-01-28 11:23:33', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (36, '032 Badeau Parkway', 'Duke', '2019-06-17 02:37:40', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (37, '21 Banding Way', 'Viper', '2020-06-01 18:34:12', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (38, '8131 Daystar Center', 'Ace', '2017-11-18 13:40:40', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (39, '802 Melody Parkway', 'Ninja', '2022-07-02 20:11:07', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (40, '9 Division Way', 'Ace', '2022-03-25 01:47:14', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (41, '725 Ilene Terrace', 'Viper', '2020-09-18 08:31:20', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (42, '78132 Schlimgen Road', 'Oracle', '2021-03-20 11:15:30', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (43, '0 Talmadge Road', 'Lucky', '2023-05-17 09:05:33', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (44, '7926 Dexter Center', 'Viper', '2021-01-31 08:22:28', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (45, '69775 Kingsford Avenue', 'Tiger', '2023-04-12 07:59:34', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (46, '26341 Pierstorff Lane', 'Phoenix', '2020-02-11 02:26:08', 'turn;sit;stand');
insert into Dog (id, home, nickName, birthDate, commands) values (47, '64990 Carberry Way', 'Shadow', '2020-12-26 18:36:01', 'stop;go;sit');
insert into Dog (id, home, nickName, birthDate, commands) values (48, '511 Gale Way', 'Ranger', '2021-11-27 13:10:19', 'run;jump');
insert into Dog (id, home, nickName, birthDate, commands) values (49, '1574 Rigney Circle', 'Shadow', '2018-02-20 20:17:23', 'stop;go;voice');
insert into Dog (id, home, nickName, birthDate, commands) values (50, '7 Derek Point', 'Joker', '2022-02-18 00:59:58', 'run;jump');

#####

insert into Cat (id, home, nickName, birthDate, commands) values (1, '676 Nancy Point', 'King', '2023-04-24 08:13:03', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (2, '788 Derek Pass', 'Wizard', '2020-03-10 05:44:53', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (3, '9 Bluestem Alley', 'Hawk', '2023-05-05 14:02:27', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (4, '5093 Artisan Terrace', 'Hawk', '2019-08-27 06:33:06', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (5, '1944 Little Fleur Alley', 'Maverick', '2021-12-11 10:57:18', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (6, '6072 Prairie Rose Terrace', 'King', '2018-10-15 19:19:18', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (7, '8 Cardinal Drive', 'Viper', '2021-03-02 07:20:18', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (8, '4254 Esch Alley', 'Zeus', '2017-10-02 21:05:36', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (9, '872 Forster Junction', 'Guru', '2017-11-07 22:38:33', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (10, '35 Reindahl Pass', 'Shadow', '2022-09-10 08:49:49', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (11, '0079 Mayer Circle', 'Shadow', '2020-09-14 13:08:53', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (12, '607 Park Meadow Crossing', 'Hawk', '2020-09-13 13:44:32', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (13, '62058 Rockefeller Hill', 'Lucky', '2017-11-06 21:00:03', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (14, '57975 Merry Center', 'Buddy', '2018-10-10 05:53:15', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (15, '9 Red Cloud Street', 'Shadow', '2022-06-15 11:45:45', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (16, '98368 Hoepker Center', 'Viper', '2020-11-20 09:38:31', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (17, '0978 Del Sol Circle', 'Phoenix', '2020-09-29 03:51:28', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (18, '46 Bonner Crossing', 'Zeus', '2020-09-29 23:32:36', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (19, '454 Dottie Crossing', 'Hawk', '2023-04-21 20:31:03', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (20, '94 Sycamore Point', 'Lucky', '2020-03-15 21:35:54', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (21, '88 Troy Way', 'King', '2022-09-04 00:52:47', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (22, '9498 Reinke Point', 'Captain', '2018-02-21 10:00:31', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (23, '555 Rusk Circle', 'Joker', '2021-08-02 09:33:52', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (24, '08 Bowman Alley', 'King', '2022-11-17 21:37:42', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (25, '1 Dexter Circle', 'Viper', '2021-11-29 08:07:45', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (26, '564 Sundown Trail', 'Maverick', '2023-03-14 14:57:10', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (27, '08433 Shasta Point', 'Maverick', '2022-03-09 23:17:04', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (28, '575 Amoth Point', 'Wizard', '2017-10-21 23:32:42', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (29, '02071 Bowman Alley', 'Maverick', '2020-02-06 14:34:31', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (30, '8071 Village Drive', 'Wizard', '2018-04-24 12:31:15', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (31, '55 Carberry Plaza', 'Shadow', '2022-08-25 17:04:39', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (32, '1 3rd Circle', 'Joker', '2020-05-08 02:57:04', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (33, '0 Oak Valley Place', 'Guru', '2018-01-07 01:56:52', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (34, '4 Granby Terrace', 'Viper', '2019-09-10 15:00:28', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (35, '0169 Shasta Way', 'Wizard', '2022-02-19 08:23:57', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (36, '01630 Walton Lane', 'Ranger', '2023-04-18 18:58:08', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (37, '2 Anhalt Junction', 'Guru', '2018-08-03 21:28:20', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (38, '108 Sachtjen Crossing', 'Wizard', '2021-10-15 13:53:39', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (39, '33436 Harbort Place', 'Buddy', '2023-03-01 22:46:53', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (40, '60 Hollow Ridge Park', 'Captain', '2023-03-06 05:58:33', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (41, '61917 Judy Point', 'Ace', '2023-07-11 00:27:42', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (42, '133 Susan Center', 'Viper', '2019-05-23 20:20:38', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (43, '4983 Lyons Circle', 'Ranger', '2020-12-17 21:54:32', 'stop;go;voice');
insert into Cat (id, home, nickName, birthDate, commands) values (44, '04 Becker Terrace', 'Flash', '2019-02-23 14:02:10', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (45, '7495 Hoard Lane', 'Ninja', '2020-09-22 19:32:03', 'walk;sleep;wake');
insert into Cat (id, home, nickName, birthDate, commands) values (46, '88 Declaration Road', 'Hawk', '2019-12-24 09:36:49', 'turn;sit;stand');
insert into Cat (id, home, nickName, birthDate, commands) values (47, '546 Columbus Alley', 'Maverick', '2019-10-02 11:06:34', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (48, '9 Ruskin Place', 'Captain', '2019-06-30 22:00:41', 'run;jump');
insert into Cat (id, home, nickName, birthDate, commands) values (49, '030 Bultman Street', 'Oracle', '2021-07-19 04:30:17', 'stop;go;sit');
insert into Cat (id, home, nickName, birthDate, commands) values (50, '47 Oneill Road', 'Oracle', '2023-06-27 23:44:03', 'run;jump');

#####

insert into Hamster (id, home, nickName, birthDate, commands) values (1, '84 Burrows Circle', 'Duke', '2022-08-18 22:42:29', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (2, '3 Moose Circle', 'Hawk', '2020-03-23 23:13:18', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (3, '9167 Johnson Hill', 'Ninja', '2018-02-28 08:04:27', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (4, '5 Boyd Road', 'Flash', '2021-03-10 05:41:14', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (5, '93734 Heath Circle', 'Buddy', '2023-07-09 22:05:16', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (6, '0 Spohn Trail', 'Ranger', '2020-12-30 20:07:00', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (7, '5 Pearson Lane', 'Tiger', '2020-12-16 06:31:45', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (8, '7 Welch Lane', 'King', '2020-03-08 05:23:37', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (9, '00 Tennessee Place', 'Captain', '2019-11-27 09:49:18', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (10, '41291 Sycamore Way', 'Viper', '2022-10-12 08:48:32', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (11, '3884 Village Green Road', 'Flash', '2018-05-31 00:01:34', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (12, '81 Spohn Alley', 'Shadow', '2022-02-13 08:30:33', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (13, '91357 Mendota Drive', 'Lucky', '2022-02-02 07:18:53', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (14, '449 Fairfield Junction', 'Hawk', '2018-08-14 04:20:30', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (15, '6 Ridgeway Lane', 'Lucky', '2017-10-20 04:16:11', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (16, '7 Dennis Crossing', 'Duke', '2019-07-15 18:29:50', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (17, '18059 Banding Road', 'Ace', '2020-10-02 12:30:48', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (18, '0 Huxley Parkway', 'Joker', '2021-09-02 04:23:36', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (19, '950 Prairieview Center', 'Tiger', '2022-04-13 19:21:26', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (20, '98 David Avenue', 'Zeus', '2018-08-10 05:35:20', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (21, '7 Gerald Plaza', 'Duke', '2019-07-03 03:02:43', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (22, '40492 American Hill', 'Maverick', '2021-07-13 06:36:42', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (23, '709 Mayer Crossing', 'Duke', '2019-01-31 22:40:00', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (24, '73 Marquette Street', 'Ninja', '2022-08-05 05:09:27', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (25, '084 Nova Avenue', 'Hawk', '2019-09-11 17:51:49', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (26, '4 Larry Alley', 'Ranger', '2021-06-09 14:20:02', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (27, '702 Claremont Park', 'Maverick', '2019-08-09 08:47:19', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (28, '72083 3rd Road', 'Lucky', '2022-08-16 12:02:01', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (29, '6 Truax Junction', 'Lucky', '2019-09-04 05:54:39', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (30, '3 Doe Crossing Street', 'Viper', '2020-04-23 09:03:40', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (31, '1 Pierstorff Place', 'Viper', '2019-12-12 06:04:17', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (32, '1994 Maryland Trail', 'Maverick', '2022-12-07 00:23:26', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (33, '55566 Onsgard Park', 'Oracle', '2019-10-19 16:29:11', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (34, '49 Hoard Lane', 'Guru', '2022-04-27 12:49:04', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (35, '1273 Manitowish Pass', 'Hawk', '2018-07-26 13:06:18', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (36, '11336 Northridge Crossing', 'Tiger', '2023-04-27 18:47:24', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (37, '9355 Briar Crest Plaza', 'Hawk', '2023-07-04 03:54:48', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (38, '387 Algoma Street', 'Phoenix', '2022-11-11 05:29:30', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (39, '44 Lukken Crossing', 'Ninja', '2019-05-16 04:28:28', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (40, '2 Bonner Hill', 'Flash', '2018-09-20 15:23:47', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (41, '0970 Jackson Crossing', 'Oracle', '2020-06-26 13:26:14', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (42, '72684 Sherman Center', 'Guru', '2019-08-16 19:52:33', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (43, '20 Rieder Court', 'Lucky', '2018-08-01 17:18:41', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (44, '9 Heath Circle', 'Buddy', '2017-12-30 11:00:40', 'run;jump');
insert into Hamster (id, home, nickName, birthDate, commands) values (45, '43 Lerdahl Trail', 'Guru', '2019-12-23 08:33:38', 'stop;go;voice');
insert into Hamster (id, home, nickName, birthDate, commands) values (46, '5 Farmco Court', 'Ranger', '2019-09-11 16:39:20', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (47, '5 1st Alley', 'Maverick', '2017-12-27 08:14:21', 'walk;sleep;wake');
insert into Hamster (id, home, nickName, birthDate, commands) values (48, '0333 Bultman Center', 'King', '2018-12-26 04:33:30', 'stop;go;sit');
insert into Hamster (id, home, nickName, birthDate, commands) values (49, '01334 Glendale Parkway', 'Viper', '2019-05-28 20:39:06', 'turn;sit;stand');
insert into Hamster (id, home, nickName, birthDate, commands) values (50, '3510 Northview Junction', 'Maverick', '2019-02-21 13:26:03', 'stop;go;voice');

#####

insert into Horse (id, zoo, nickName, birthDate, commands) values (1, 'Zoo Quest', 'King', '2018-05-09 04:23:12', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (2, 'Animal Paradise', 'Ninja', '2022-05-27 11:34:02', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (3, 'Zoo Kingdom', 'Tiger', '2017-12-10 02:55:36', 'turn;sit;stand');
insert into Horse (id, zoo, nickName, birthDate, commands) values (4, 'Serengeti Safari', 'Flash', '2017-10-02 15:04:23', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (5, 'Animal Paradise', 'Zeus', '2019-12-21 14:00:13', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (6, 'Nature Haven', 'Zeus', '2023-02-13 03:20:54', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (7, 'Exotic Encounters', 'Maverick', '2022-03-03 17:35:51', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (8, 'Nature Haven', 'Duke', '2019-05-23 22:50:18', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (9, 'Jungle Oasis', 'Shadow', '2018-08-15 04:30:17', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (10, 'Safari Adventure', 'Captain', '2018-10-04 15:49:11', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (11, 'Nature Haven', 'Buddy', '2020-02-06 23:55:54', 'turn;sit;stand');
insert into Horse (id, zoo, nickName, birthDate, commands) values (12, 'Nature Haven', 'Duke', '2020-01-08 09:08:23', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (13, 'Lion''s Den', 'Flash', '2022-01-31 12:29:23', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (14, 'Safari Adventure', 'Shadow', '2018-05-31 22:02:54', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (15, 'Lion''s Den', 'Viper', '2017-12-30 13:59:31', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (16, 'Lion''s Den', 'Ninja', '2017-12-07 12:48:57', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (17, 'Lion''s Den', 'Tiger', '2018-02-05 22:55:53', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (18, 'Exotic Encounters', 'Shadow', '2020-06-24 20:51:22', 'stop;go;voice');
insert into Horse (id, zoo, nickName, birthDate, commands) values (19, 'Lion''s Den', 'Joker', '2019-12-30 02:37:41', 'stop;go;sit');
insert into Horse (id, zoo, nickName, birthDate, commands) values (20, 'Nature Haven', 'Zeus', '2022-11-18 15:52:15', 'stop;go;sit');
insert into Horse (id, zoo, nickName, birthDate, commands) values (21, 'Lion''s Den', 'King', '2021-12-31 01:06:44', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (22, 'Zoo Quest', 'Duke', '2022-09-20 15:43:14', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (23, 'Animal Paradise', 'Oracle', '2018-12-03 02:08:44', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (24, 'Zoo Quest', 'Lucky', '2017-10-08 12:30:33', 'stop;go;sit');
insert into Horse (id, zoo, nickName, birthDate, commands) values (25, 'Serengeti Safari', 'Oracle', '2017-11-09 18:00:28', 'turn;sit;stand');
insert into Horse (id, zoo, nickName, birthDate, commands) values (26, 'Jungle Oasis', 'Shadow', '2021-08-23 10:55:39', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (27, 'Jungle Oasis', 'Ranger', '2022-11-14 22:04:24', 'walk;sleep;wake');
insert into Horse (id, zoo, nickName, birthDate, commands) values (28, 'Zoo Kingdom', 'Captain', '2021-01-25 01:54:30', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (29, 'Serengeti Safari', 'King', '2021-03-03 02:07:49', 'run;jump');
insert into Horse (id, zoo, nickName, birthDate, commands) values (30, 'Zoo Kingdom', 'Ranger', '2021-03-18 13:55:27', 'turn;sit;stand');

#####

insert into Camel (id, zoo, nickName, birthDate, commands) values (1, 'Wildlife Wonderland', 'Ninja', '2017-10-20 08:58:17', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (2, 'Exotic Encounters', 'Phoenix', '2023-02-25 19:03:34', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (3, 'Serengeti Safari', 'Tiger', '2019-05-17 22:15:10', 'stop;go;voice');
insert into Camel (id, zoo, nickName, birthDate, commands) values (4, 'Lion''s Den', 'Hawk', '2022-12-22 09:57:20', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (5, 'Zoo Quest', 'Shadow', '2019-05-26 16:09:50', 'stop;go;voice');
insert into Camel (id, zoo, nickName, birthDate, commands) values (6, 'Zoo Kingdom', 'Captain', '2018-09-30 02:52:16', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (7, 'Animal Paradise', 'Shadow', '2022-04-29 12:20:44', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (8, 'Safari Adventure', 'Flash', '2022-03-01 17:49:12', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (9, 'Zoo Kingdom', 'Lucky', '2023-01-24 19:57:39', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (10, 'Wildlife Wonderland', 'Maverick', '2021-10-30 13:01:45', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (11, 'Serengeti Safari', 'Guru', '2021-07-10 09:43:24', 'turn;sit;stand');
insert into Camel (id, zoo, nickName, birthDate, commands) values (12, 'Zoo Kingdom', 'Guru', '2019-02-24 16:13:49', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (13, 'Lion''s Den', 'Zeus', '2021-11-17 02:37:10', 'turn;sit;stand');
insert into Camel (id, zoo, nickName, birthDate, commands) values (14, 'Exotic Encounters', 'Oracle', '2020-10-18 00:07:51', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (15, 'Lion''s Den', 'Shadow', '2020-02-14 12:05:34', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (16, 'Safari Adventure', 'Tiger', '2022-04-25 06:10:16', 'turn;sit;stand');
insert into Camel (id, zoo, nickName, birthDate, commands) values (17, 'Exotic Encounters', 'Captain', '2020-07-26 16:10:01', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (18, 'Wildlife Wonderland', 'Phoenix', '2022-01-21 05:54:18', 'turn;sit;stand');
insert into Camel (id, zoo, nickName, birthDate, commands) values (19, 'Zoo Kingdom', 'Phoenix', '2020-05-03 02:09:13', 'walk;sleep;wake');
insert into Camel (id, zoo, nickName, birthDate, commands) values (20, 'Wildlife Wonderland', 'Joker', '2023-03-02 01:37:00', 'stop;go;voice');
insert into Camel (id, zoo, nickName, birthDate, commands) values (21, 'Lion''s Den', 'Shadow', '2018-09-16 21:23:01', 'run;jump');
insert into Camel (id, zoo, nickName, birthDate, commands) values (22, 'Nature Haven', 'Zeus', '2021-07-20 17:48:51', 'turn;sit;stand');
insert into Camel (id, zoo, nickName, birthDate, commands) values (23, 'Wildlife Wonderland', 'Maverick', '2021-03-18 22:27:08', 'walk;sleep;wake');
insert into Camel (id, zoo, nickName, birthDate, commands) values (24, 'Lion''s Den', 'Captain', '2020-03-27 06:57:23', 'stop;go;voice');
insert into Camel (id, zoo, nickName, birthDate, commands) values (25, 'Nature Haven', 'Duke', '2022-12-30 10:37:20', 'walk;sleep;wake');
insert into Camel (id, zoo, nickName, birthDate, commands) values (26, 'Nature Haven', 'Viper', '2022-12-24 03:57:49', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (27, 'Zoo Quest', 'Captain', '2021-02-07 18:34:47', 'stop;go;voice');
insert into Camel (id, zoo, nickName, birthDate, commands) values (28, 'Exotic Encounters', 'Flash', '2017-10-28 06:04:48', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (29, 'Animal Paradise', 'Buddy', '2020-03-02 17:59:14', 'stop;go;sit');
insert into Camel (id, zoo, nickName, birthDate, commands) values (30, 'Safari Adventure', 'Shadow', '2023-01-23 11:57:11', 'stop;go;voice');

#####

insert into Donkey (id, zoo, nickName, birthDate, commands) values (1, 'Lion''s Den', 'Duke', '2022-06-14 23:56:40', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (2, 'Animal Paradise', 'Tiger', '2018-05-28 07:24:43', 'walk;sleep;wake');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (3, 'Lion''s Den', 'Hawk', '2019-12-20 14:32:25', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (4, 'Safari Adventure', 'Joker', '2019-07-11 16:48:16', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (5, 'Zoo Kingdom', 'Shadow', '2021-09-14 01:03:35', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (6, 'Zoo Quest', 'Hawk', '2021-01-16 21:59:25', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (7, 'Wildlife Wonderland', 'Hawk', '2019-04-11 16:30:49', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (8, 'Animal Paradise', 'Flash', '2018-05-07 13:24:15', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (9, 'Exotic Encounters', 'Ace', '2019-04-05 00:34:36', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (10, 'Zoo Quest', 'Oracle', '2018-02-19 04:59:31', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (11, 'Zoo Kingdom', 'Flash', '2017-12-28 13:10:00', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (12, 'Zoo Quest', 'Flash', '2022-03-08 00:10:40', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (13, 'Zoo Quest', 'Hawk', '2018-05-24 06:35:46', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (14, 'Lion''s Den', 'Captain', '2020-07-14 15:30:12', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (15, 'Nature Haven', 'Captain', '2022-08-23 20:19:01', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (16, 'Wildlife Wonderland', 'Viper', '2023-01-23 18:30:29', 'stop;go;sit');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (17, 'Jungle Oasis', 'Captain', '2018-07-13 21:54:06', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (18, 'Nature Haven', 'Ace', '2019-03-16 12:50:50', 'walk;sleep;wake');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (19, 'Zoo Quest', 'Shadow', '2018-02-09 02:44:41', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (20, 'Nature Haven', 'Guru', '2020-02-21 18:20:25', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (21, 'Jungle Oasis', 'Hawk', '2021-02-21 09:10:01', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (22, 'Lion''s Den', 'Duke', '2022-11-18 10:23:57', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (23, 'Wildlife Wonderland', 'Buddy', '2020-01-10 06:05:06', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (24, 'Zoo Quest', 'Zeus', '2018-01-27 08:50:37', 'turn;sit;stand');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (25, 'Zoo Quest', 'Duke', '2017-11-02 05:59:49', 'run;jump');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (26, 'Zoo Kingdom', 'Tiger', '2022-05-11 14:00:17', 'walk;sleep;wake');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (27, 'Animal Paradise', 'Tiger', '2019-02-20 04:01:00', 'walk;sleep;wake');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (28, 'Exotic Encounters', 'Oracle', '2018-02-01 11:58:32', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (29, 'Zoo Quest', 'Oracle', '2020-11-08 07:04:03', 'stop;go;voice');
insert into Donkey (id, zoo, nickName, birthDate, commands) values (30, 'Serengeti Safari', 'Buddy', '2019-12-08 21:32:28', 'stop;go;sit');

# 10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
DELETE FROM `Camel`;

CREATE TABLE HorseAndDonkey AS (
	SELECT zoo, nickName, birthDate, commands FROM `Horse`
    UNION 
    SELECT zoo, nickName, birthDate, commands FROM `Donkey`
);

# 11.Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью 
# до месяца подсчитать возраст животных в новой таблице

create table YoungAnimal (
	id INT PRIMARY KEY auto_increment,
	place VARCHAR(50) NOT NULL,
	typeAnimal INT NOT NULL, 
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL, 
	yearsOld VARCHAR(15) NOT NULL
);

DELIMITER $$
CREATE FUNCTION month_to_str(mon INT)
RETURNS TEXT(130)
DETERMINISTIC
BEGIN
    DECLARE years INT default 0;
	
    SET years= FLOOR(mon/12);
    RETURN CONCAT (years, ' лет, ', (mon - years*12), ' мес.');
END $$
DELIMITER ;

INSERT INTO YoungAnimal (place, typeAnimal, nickName, birthDate, commands, yearsOld) 
		SELECT home, 1, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Dog` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
	UNION 
		SELECT home, 2, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Cat` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
	UNION 
		SELECT home, 3, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Hamster` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
	UNION 
		SELECT zoo, 4, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Horse` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
	UNION 
		SELECT zoo, 5, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Camel` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
	UNION 
		SELECT zoo, 6, nickName, birthDate, commands, month_to_str(TIMESTAMPDIFF(MONTH, birthDate, CURRENT_DATE()))  
			FROM `Donkey` WHERE TIMESTAMPDIFF(YEAR, birthDate, CURRENT_DATE()) IN (1, 2)
;

# 12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.
create table AllAnimals (
	id INT PRIMARY KEY auto_increment,
	place VARCHAR(50) NOT NULL,
	typeAnimal VARCHAR(20) NOT NULL, 
	nickName VARCHAR(8) NOT NULL,
	birthDate DATE NOT NULL,
	commands VARCHAR(15) NOT NULL
);

INSERT INTO AllAnimals (place, typeAnimal, nickName, birthDate, commands) 
	SELECT home, 'Dog', nickName, birthDate, commands FROM `Dog`
    UNION 
    SELECT home, 'Cat', nickName, birthDate, commands FROM `Cat`
    UNION 
    SELECT home, 'Hamster', nickName, birthDate, commands FROM `Hamster`
    UNION 
    SELECT zoo, 'Horse', nickName, birthDate, commands FROM `Horse`
    UNION 
    SELECT zoo, 'Camel', nickName, birthDate, commands FROM `Camel`
    UNION 
    SELECT zoo, 'Donkey', nickName, birthDate, commands FROM `Donkey`
;