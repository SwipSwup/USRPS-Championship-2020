-- drop constraints

alter table game
    drop foreign key c_game1;
alter table game
    drop foreign key c_game2;
alter table game
    drop foreign key c_game3;

-- drop if exists

drop table if exists championship;
drop table if exists game;
drop table if exists player;
drop table if exists round;


-- creating tables

create table championship
(
    pk_champNr int primary key,
    name       VARCHAR(40),
    date       date
);

create table game
(
    pk_gameNr int,
    fk_champNr  int,
    fk_player1 varchar(40),
    fk_player2 varchar(40),
    signP1     int,
    signP2     int,
    time       time,
    PRIMARY KEY (pk_gameNr, fk_champNr)
);

create table player
(
    pk_gamertag varchar(40) primary key,
    birthday    date
);


-- alter table

alter table game
    add constraint c_game1 foreign key (fk_champNr) references championship (pk_champNr);
alter table game
    add constraint c_game2 foreign key (fk_player1) references player (pk_gamertag);
alter table game
    add constraint c_game3 foreign key (fk_player2) references player (pk_gamertag);