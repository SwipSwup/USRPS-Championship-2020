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

insert into game(pk_gameNr, fk_champNr, fk_player1, fk_player2, signP1, signP2, time)
VALUES (1, 1, 'NastyBear', 'BlueDad', 0, 1, '11:11:11'),
       (2, 1, 'DamnedKnight', 'InsaneKitty', 1, 1, '11:11:19'),
       (3, 1, 'ScaryBody', 'SaltyTiger', 1, 2, '11:11:29'),
       (4, 1, 'InsaneKitty', 'SulkyBird', 0, 2, '11:11:39'),
       (5, 1, 'SaltyTiger', 'DeadSeal', 0, 1, '11:12:39'),
       (6, 1, 'TripleTiffany', 'DamnedKnight', 2, 1, '11:15:04'),
       (7, 1, 'BlueDad', 'TidyHero', 1, 2, '11:15:35'),
       (8, 1, 'SaltyTiger', 'NastyBear', 2, 2, '11:16:25'),
       (9, 1, 'TripleTiffany', 'ScaryBody', 0, 1, '11:17:04'),
       (10, 1, 'SulkyBird', 'SaltyTiger', 2, 1, '11:17:14'),
       (11, 1, 'DeadSeal', 'InsaneKitty', 0, 1, '11:25:01'),
       (12, 1, 'NastyBear', 'TidyHero', 0, 2, '11:25:41'),
       (13, 1, 'InsaneKitty', 'SulkyBird', 1, 2, '11:25:49'),
       (14, 1, 'SaltyTiger', 'DeadSeal', 2, 0, '11:26:13'),
       (15, 1, 'ScaryBody', 'BlueDad', 1, 0, '11:26:55'),
       (1, 2, 'DamnedKnight', 'NastyBear', 1, 0, '15:10:53'),
       (2, 2, 'DamnedKnight', 'DeadSeal', 1, 2, '15:11:20'),
       (3, 2, 'TripleTiffany', 'InsaneKitty', 1, 1, '15:11:43'),
       (4, 2, 'BlueDad', 'DamnedKnight', 0, 0, '15:12:00'),
       (5, 2, 'ScaryBody', 'SaltyTiger', 2, 1, '15:12:34'),
       (6, 2, 'TidyHero', 'DamnedKnight', 1, 2, '16:01:20'),
       (7, 2, 'SaltyTiger', 'ScaryBody', 2, 1, '16:01:56'),
       (8, 2, 'InsaneKitty', 'SulkyBird', 0, 2, '16:02:24'),
       (9, 2, 'TripleTiffany', 'BlueDad', 2, 0, '16:02:49'),
       (10, 2, 'SulkyBird', 'DamnedKnight', 0, 1, '16:03:34'),
       (11, 2, 'ScaryBody', 'InsaneKitty', 1, 1, '18:01:00'),
       (12, 2, 'DeadSeal', 'SaltyTiger', 0, 2, '18:02:00'),
       (13, 2, 'TidyHero', 'TripleTiffany', 0, 0, '18:03:00'),
       (14, 2, 'ScaryBody', 'DamnedKnight', 2, 1, '18:04:00'),
       (15, 2, 'BlueDad', 'DeadSeal', 0, 0, '18:05:00'),
       (1, 3, 'NastyBear', 'DamnedKnight', 0, 2, '12:45:20'),
       (2, 3, 'SulkyBird', 'TidyHero', 1, 2, '12:45:56'),
       (3, 3, 'SaltyTiger', 'DeadSeal', 1, 0, '12:46:43'),
       (4, 3, 'DamnedKnight', 'TidyHero', 2, 0, '12:47:22'),
       (5, 3, 'TripleTiffany', 'ScaryBody', 1, 0, '12:48:10'),
       (6, 3, 'InsaneKitty', 'ScaryBody', 1, 2, '14:01:15'),
       (7, 3, 'TidyHero', 'DamnedKnight', 1, 1, '14:01:15'),
       (8, 3, 'DeadSeal', 'BlueDad', 2, 0, '14:01:15'),
       (9, 3, 'SulkyBird', 'SaltyTiger', 2, 2, '14:01:15'),
       (10, 3, 'BlueDad', 'TripleTiffany', 0, 2, '14:01:15'),
       (11, 3, 'TidyHero', 'InsaneKitty', 0, 0, '15:30:00'),
       (12, 3, 'InsaneKitty', 'TidyHero', 2, 2, '15:30:00'),
       (13, 3, 'DamnedKnight', 'NastyBear', 1, 0, '15:30:00'),
       (14, 3, 'SaltyTiger', 'ScaryBody', 2, 0, '15:30:00'),
       (15, 3, 'DeadSeal', 'SulkyBird', 0, 1, '15:30:00');