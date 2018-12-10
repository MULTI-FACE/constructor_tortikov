--DROP DATABASE Konst_tort;
CREATE DATABASE Konst_tort;

CREATE TABLE element_tort(
id_elem int not null PRIMARY KEY IDENTITY,
naimonovanie_elem varchar(50) not null,
ed_izmer char(10) not null);

INSERT INTO element_tort(naimonovanie_elem, ed_izmer) VALUES 
('Корж', 'шт'),
('Украшение', 'шт'), 
('Крем', 'гр'), 
('Дополнительные начинки', 'гр'),
('Упаковка', 'шт'),
('Лента', 'м');

CREATE TABLE korzh(
id_korzha int not null PRIMARY KEY IDENTITY,
naimonovanie_korzha varchar(50) null,
kod_obz varchar(20) not null,
cena int null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO korzh (naimonovanie_korzha, kod_obz,cena,id_elem) VALUES 
('', 'null', null,1),
('Песочный', 'korpes', 100,1),
('Бисквит', 'korbisk', 120,1), 
('Творожный', 'kortvor', 130,1), 
('Вафельный', 'korvaf', 115,1);

CREATE TABLE krem(
id_krema int not null PRIMARY KEY IDENTITY,
naimonovanie_krema varchar(50) not null,
kod_obz varchar(20) not null,
cena int not null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO krem(naimonovanie_krema, kod_obz,cena,id_elem) VALUES 
('Масляный', 'krmas', 15,3), 
('Творожный', 'krtvor', 12,3), 
('Йогуртовый', 'kryog', 20,3), 
('Взбитые сливки', 'krvzbsl', 22,3);

CREATE TABLE ukrashenie(
id_ukrash int not null PRIMARY KEY IDENTITY,
naimonovanie_ukr varchar(50) not null,
kod_obz varchar(20) not null,
cena int not null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO ukrashenie(naimonovanie_ukr, kod_obz,cena,id_elem) VALUES 
('Вишенка', 'ukrvish', 35,2), 
('Шоколадная глазурь', 'ukrshokgl', 50,2), 
('Марципановая фигурка', 'ukrmarz', 67,2), 
('Зефир', 'ukrzef', 38,2),
('Шоколадная крошка', 'ukrshokkr', 22,2);

CREATE TABLE dop_ukrash(
id_ukr int not null PRIMARY KEY IDENTITY,
naimonovanie_dopukr varchar(50) not null,
kod_obz varchar(20) not null,
cena int not null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO dop_ukrash(naimonovanie_dopukr, kod_obz,cena,id_elem) VALUES 
('Орехи', 'dopukroreh',60,4),
('Цукаты', 'dopukrcuk',20,4),
('Изюм','dopukrizum',28,4),
('M&Ms','dopukrM&Ms',40,4);

CREATE TABLE upakovka(
id_upak int not null PRIMARY KEY IDENTITY,
naimonovanie_upak varchar(50) not null,
kod_obz varchar(20) not null,
cena int not null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO dop_ukrash(naimonovanie_dopukr, kod_obz,cena,id_elem) VALUES 
('Простая', 'upakprost',150,5);

CREATE TABLE lenta(
id_lent int not null PRIMARY KEY IDENTITY,
naimonovanie_lent varchar(50) not null,
kod_obz varchar(20) not null,
cena int not null,
id_elem int not null,
FOREIGN KEY (id_elem) REFERENCES element_tort (id_elem));

INSERT INTO lenta(naimonovanie_lent, kod_obz,cena,id_elem) VALUES 
('Обычная', 'lenobich',50,5),
('Праздничная', 'lenpraz',120,5);