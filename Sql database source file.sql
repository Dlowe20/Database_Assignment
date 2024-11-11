DROP SCHEMA IF EXISTS db4_MH;
CREATE SCHEMA db4_MH;
USE db4_MH;

drop database if exists	db4_MH;
create database db4_MH;
use db4_MH;

CREATE TABLE Monster (
    Monster_name VARCHAR(50) NOT NULL,
    Monster_type VARCHAR(20) NOT NULL,
    Monster_desc VARCHAR (500) NOT NULL,
    PRIMARY KEY (Monster_name)
);

CREATE TABLE Elements (
    Monster_name VARCHAR(50) NOT NULL,
    Fire INT(3) NOT NULL,
    Water INT(3) NOT NULL,
    Thunder INT(3) NOT NULL,
    Dragon INT(3) NOT NULL,
    Ice INT(3) NOT NULL,
    PRIMARY KEY (Monster_name),
    FOREIGN KEY (Monster_name) REFERENCES Monster(Monster_name)
);

CREATE TABLE Ailments (
    Monster_name VARCHAR(50) NOT NULL,
    Poison INT(3) NOT NULL,
    Stun INT(3) NOT NULL,
    Paralysis INT(3) NOT NULL,
    Blast INT(3) NOT NULL,
    PRIMARY KEY (Monster_name),
    FOREIGN KEY (Monster_name) REFERENCES Monster(Monster_name)
);

CREATE TABLE Monster_Stats (
    Monster_name VARCHAR(50) NOT NULL,
    Monster_dmg VARCHAR(20) NOT NULL,
    Monster_threat INT(5) NOT NULL,
    PRIMARY KEY (Monster_name),
    FOREIGN KEY (Monster_name) REFERENCES Monster(Monster_name)
);


INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Anjanath', 'Brute Wyvern', 'A massive, fire-breathing brute wyvern with a powerful charge attack.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Barroth', 'Brute Wyvern', 'A hulking brute wyvern known for its ability to coat itself in mud.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Diablos', 'Flying Wyvern', 'A fearsome flying wyvern that burrows into the ground and charges at its prey.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Dodogama', 'Slag Wyvern', 'A wyvern that eats minerals and expels explosive rocks from its mouth.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Great Jagras', 'Bird Wyvern', 'A large, carnivorous bird wyvern known for its ability to swallow prey whole.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Kulu-Ya-Ku', 'Bird Wyvern', 'A bird wyvern that uses rocks to shield itself and attack.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Jyuratodus', 'Piscine Wyvern', 'A water-dwelling wyvern that can swim and leap to attack with its large fins.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Rathian', 'Flying Wyvern', 'A flying wyvern that is the queen of the skies, known for her poison-spitting attack.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Rathalos', 'Flying Wyvern', 'A fierce flying wyvern often called the "King of the Skies," known for its fiery breath.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Nergigante', 'Elder Dragon', 'A terrifying Elder Dragon known for its powerful regenerative abilities and aggressive nature.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Paolumu', 'Flying Wyvern', 'A flying wyvern that uses air sacs in its body to float and unleash explosive gusts of air.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Pukei-Pukei', 'Bird Wyvern', 'A bird wyvern that spits venom and uses its long tongue to attack from a distance.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Tobi-Kadachi', 'Flying Wyvern', 'A nimble electric wyvern known for its speed and agility.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Uragaan', 'Brute Wyvern', 'A large, molten wyvern that uses its massive body to crush anything in its path.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Xeno\'jiva', 'Elder Dragon', 'A mysterious and ancient Elder Dragon known for its energy-based attacks.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Kushala Daora', 'Elder Dragon', 'An Elder Dragon that controls wind and creates violent storms with its wings.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Legiana', 'Flying Wyvern', 'A graceful wyvern that flies and uses ice to freeze its enemies.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Bazelgeuse', 'Flying Wyvern', 'A bomb-lobbing flying wyvern known for dropping explosive scales on its prey.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Vaal Hazak', 'Elder Dragon', 'An Elder Dragon that emanates a toxic miasma and drains the life force of its victims.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Odogaron', 'Fanged Wyvern', 'A fast and deadly wyvern known for its high mobility and sharp claws.');
INSERT INTO Monster (Monster_name, Monster_type, Monster_desc)
VALUES ('Tzitzi-Ya-Ku', 'Bird Wyvern', 'A bird wyvern that uses flashing light to stun and disorient its prey.');


INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Anjanath', 3, 5, 4, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Barroth', 7, 6, 3, 4);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Diablos', 10, 8, 5, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Dodogama', 5, 7, 2, 7);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Great Jagras', 4, 6, 5, 4);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Kulu-Ya-Ku', 3, 5, 4, 4);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Jyuratodus', 6, 7, 3, 5);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Rathian', 10, 5, 4, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Rathalos', 5, 6, 3, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Nergigante', 6, 5, 4, 7);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Paolumu', 2, 7, 3, 4);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Pukei-Pukei', 8, 4, 5, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Tobi-Kadachi', 3, 6, 4, 4);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Uragaan', 7, 4, 5, 6);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Xeno\'jiva', 10, 8, 6, 5);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Kushala Daora', 5, 6, 4, 5);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Legiana', 2, 5, 6, 3);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Bazelgeuse', 4, 8, 5, 7);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Vaal Hazak', 8, 6, 5, 9);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Odogaron', 6, 5, 4, 3);
INSERT INTO Ailments (Monster_name, Poison, Stun, Paralysis, Blast)
VALUES ('Tzitzi-Ya-Ku', 2, 7, 6, 3);


INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Anjanath', 0, 3, 2, 2, 4);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Barroth', 3, 0, 2, 3, 4);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Diablos', 2, 1, 0, 4, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Dodogama', 0, 0, 3, 2, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Great Jagras', 2, 3, 0, 2, 2);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Kulu-Ya-Ku', 1, 2, 0, 2, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Jyuratodus', 1, 3, 2, 2, 1);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Rathian', 0, 2, 1, 3, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Rathalos', 10, 1, 2, 0, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Nergigante', 5, 4, 2, 5, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Paolumu', 0, 3, 2, 2, 5);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Pukei-Pukei', 2, 3, 0, 2, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Tobi-Kadachi', 3, 0, 0, 2, 2);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Uragaan', 0, 0, 3, 2, 4);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Xeno\'jiva', 0, 0, 0, 10, 2);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Kushala Daora', 3, 0, 4, 5, 0);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Legiana', 0, 2, 1, 4, 6);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Bazelgeuse', 4, 2, 3, 0, 3);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Vaal Hazak', 0, 0, 0, 5, 8);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Odogaron', 3, 2, 1, 3, 2);
INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('Tzitzi-Ya-Ku', 1, 2, 3, 0, 3);


INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Anjanath', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Barroth', 'Medium', 7);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Diablos', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Dodogama', 'High', 8);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Great Jagras', 'Low', 4);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Kulu-Ya-Ku', 'Low', 5);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Jyuratodus', 'Medium', 7);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Rathian', 'High', 7);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Rathalos', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Nergigante', 'Very High', 10);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Paolumu', 'Medium', 6);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Pukei-Pukei', 'Medium', 6);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Tobi-Kadachi', 'Medium', 7);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Uragaan', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Xeno\'jiva', 'Very High', 10);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Kushala Daora', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Legiana', 'Medium', 7);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Bazelgeuse', 'Very High', 9);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Vaal Hazak', 'Very High', 10);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Odogaron', 'High', 8);
INSERT INTO Monster_stats (Monster_name, Monster_dmg, Monster_threat)
VALUES ('Tzitzi-Ya-Ku', 'Low', 5);

show databases;
show tables;
select * from elements;
select * from ailments;
select * from monster_stats;
select * from monster;
select count(*) from Elements;

SELECT ms.Monster_name, ms.Monster_dmg, ms.Monster_threat, e.Fire, e.Water, e.Thunder, e.Dragon, e.Ice
FROM monster_stats ms
LEFT JOIN elements e
ON ms.Monster_name = e.Monster_name;

INSERT INTO Elements (Monster_name, Fire, Water, Thunder, Dragon, Ice)
VALUES ('dylan', 80, 50, 30, 70, 20);

insert into monster (monster_name, monster_type, Monster_desc)
values ('dylan', 'fly', 'banana');



select * from monster;

Delete from monster where monster_name = 'd';
Delete from elements where monster_name = 'dylan';
Delete from monster where monster_name = 'dylan';


/*
drop procedure if exists insert_mon;

Delimiter //
create procedure insert_Mon(
	in mon_name varchar(50),
    in mon_dmg varchar(50),
    in mon_threat varchar(50),
    in mon_fire varchar(50),
    in mon_water varchar(50),
    in mon_thunder varchar(50),
    in mon_dragon varchar(50),
    in mon_ice varchar(50)
)
begin 

	insert into monster_stats ( monster_name, monster_dmg, monster_threat)
		values(mon_name, mon_dmg, mon_threat);
	
    insert into elements (monster_name, Fire, Water, Thunder, Dragon, Ice)
		values (mon_name, mon_fire, mon_water, mon_thunder, mon_dragon, mon_ice);
        
end//
*/


