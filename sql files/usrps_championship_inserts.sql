insert into player(pk_gamertag, birthday)
VALUES ('NastyBear', '2000-01-01'),
       ('SaltyTiger', '2000-10-11'),
       ('BlueDad', '1950-01-05'),
       ('InsaneKitty', '1990-11-05'),
       ('DamnedKnight', '1999-12-31'),
       ('ScaryBody', '1997-10-03'),
       ('SulkyBird', '1991-12-03'),
       ('DeadSeal', '1971-02-05'),
       ('TripleTiffany', '1983-05-17'),
       ('TidyHero', '2004-04-09');

insert into championship(pk_champNr, name, date)
VALUES (3, 'world cup 2021', '2021-04-27'),
       (2, 'world cup 2020', '2020-04-27'),
       (1, 'world cup 2019', '2019-04-27');

insert into game(fk_champNr, pk_gameNr, fk_player1, fk_player2)
VALUES (1,1,'NastyBear','SaltyTiger'),
       (1,2,'BlueDad','InsaneKitty'),
       (1,3,'BlueDad','SaltyTiger'),
       (2,4,'DamnedKnight','ScaryBody'),
       (2,5,'TidyHero','TripleTiffany'),
       (2,6,'DamnedKnight','TripleTiffany'),
       (3,7,'DeadSeal','SulkyBird'),
       (3,8,'InsaneKitty','TidyHero'),
       (3,9,'InsaneKitty','DeadSeal');

insert into round(pk_roundNr, fk_gameNr, signP1, signP2, date, time)
VALUES (1, 1, 'rock',' paper', '2019-04-27', '11:11:11'),
       (2, 1, 'paper',' paper', '2019-04-27', '11:11:19'),
       (3, 1, 'paper',' scissors', '2019-04-27', '11:11:29'),
       (4, 1, 'rock',' scissors', '2019-04-27', '11:11:39'),
       (5, 1, 'rock',' paper', '2019-04-27', '11:12:39'),
       (1, 2, 'scissors',' paper', '2019-04-27', '11:15:04'),
       (2, 2, 'paper',' scissors', '2019-04-27', '11:15:35'),
       (3, 2, 'scissors',' scissors', '2019-04-27', '11:16:25'),
       (4, 2, 'stone',' paper', '2019-04-27', '11:17:04'),
       (5, 2, 'scissors',' paper', '2019-04-27', '11:17:14'),
       (1, 3, 'stone',' paper', '2019-04-27', '11:25:01'),
       (2, 3, 'stone',' scissors', '2019-04-27', '11:25:41'),
       (3, 3, 'paper',' scissors', '2019-04-27', '11:25:49'),
       (4, 3, 'scissors',' stone', '2019-04-27', '11:26:13'),
       (5, 3, 'paper',' stone', '2019-04-27', '11:26:55'),
       (1, 4, 'paper',' stone', '2020-04-27', '15:10:53'),
       (2, 4, 'paper',' scissors', '2020-04-27', '15:11:20'),
       (3, 4, 'paper',' paper', '2020-04-27', '15:11:43'),
       (4, 4, 'stone',' stone', '2020-04-27', '15:12:00'),
       (5, 4, 'scissors',' paper', '2020-04-27', '15:12:34'),
       (1, 5, 'paper',' scissors', '2020-04-27', '16:01:20'),
       (2, 5, 'scissors',' paper', '2020-04-27', '16:01:56'),
       (3, 5, 'stone',' scissors', '2020-04-27', '16:02:24'),
       (4, 5, 'scissors',' stone', '2020-04-27', '16:02:49'),
       (5, 5, 'stone',' paper', '2020-04-27', '16:03:34'),
       (1, 6, 'paper',' paper', '2020-04-27', '18:01:00'),
       (2, 6, 'stone',' scissors', '2020-04-27', '18:02:00'),
       (3, 6, 'stone',' stone', '2020-04-27', '18:03:00'),
       (4, 6, 'scissors',' paper', '2020-04-27', '18:04:00'),
       (5, 6, 'stone',' stone', '2020-04-27', '18:05:00'),
       (1, 7, 'stone',' scissors', '2021-04-27', '12:45:20'),
       (2, 7, 'paper',' scissors', '2021-04-27', '12:45:56'),
       (3, 7, 'paper',' stone', '2021-04-27', '12:46:43'),
       (4, 7, 'scissors',' stone', '2021-04-27', '12:47:22'),
       (5, 7, 'paper',' stone', '2021-04-27', '12:48:10'),
       (1, 8, 'paper',' scissors', '2021-04-27', '14:01:15'),
       (2, 8, 'paper',' paper', '2021-04-27', '14:01:15'),
       (3, 8, 'scissors',' stone', '2021-04-27', '14:01:15'),
       (4, 8, 'scissors',' scissors', '2021-04-27', '14:01:15'),
       (5, 8, 'stone',' scissors', '2021-04-27', '14:01:15'),
       (1, 9, 'stone',' stone', '2021-04-27', '15:30:00'),
       (2, 9, 'scissors',' scissors', '2021-04-27', '15:30:00'),
       (3, 9, 'paper',' stone', '2021-04-27', '15:30:00'),
       (4, 9, 'scissors',' stone', '2021-04-27', '15:30:00'),
       (5, 9, 'stone',' paper', '2021-04-27', '15:30:00');

