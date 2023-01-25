create database premier_league_stats
default character set utf8 
default collate utf8_general_ci;

create table club (
cod_club int not null,
club_name varchar (150),
wins int,
tie int,
defeats int, 
primary key (cod_club)
);

create table defense_stats (
player_name varchar (250),
player_function varchar (150),
cod_club int not null,
defenses int,
trackles int,
clean_sheets int,
red_cards int,
yellow_cards int,
primary key (player_name)
);

create table attack_stats (
player_name varchar (250),
player_function varchar (150),
cod_club int not null,
goals int,
assists int,
penalty_goals int,
free_kick_goals int,
primary key (player_name)
);

alter table attack_stats
add foreign key (cod_club)
references club (cod_club);

alter table defense_stats
add foreign key (cod_club)
references club (cod_club);




