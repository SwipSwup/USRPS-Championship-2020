-- drop constraints

alter table game
    drop foreign key c_game1;
alter table game
    drop foreign key c_game2;
alter table game
    drop foreign key c_game3;
alter table round
    drop foreign key c_round1;

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
    pk_gameNr  int primary key,
    fk_champNr int,
    fk_player1 varchar(40),
    fk_player2 varchar(40)
);

create table round
(
    pk_roundNr int,
    fk_gameNr  int,
    signP1     int,
    signP2     int,
    date       date,
    time       time,
    PRIMARY KEY (fk_gameNr, pk_roundNr)
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
alter table round
    add constraint c_round1 foreign key (fk_gameNr) references game (pk_gameNr);