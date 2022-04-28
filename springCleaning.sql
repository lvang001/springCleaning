CREATE DATABASE shirts_db;

CREATE TABLE shirts(
shirt_id Int NOT NULL,
article TEXT NOT NULL,
color TEXT NOT NULL,
shirt_size TEXT NOT NULL,
last_worn INT NOT NULL
);

/**/
INSERT INTO shirts(shirt_id, article, color, shirt_size, last_worn)
VALUES(1, 't-shirt', 'white', 'S', 10),
(2, 't-shirt', 'green', 'S', 200),
(3, 'polo shirt', 'black', 'M', 10),
(4, 'tank top', 'blue', 'S', 50),
(5, 't-shirt', 'pink', 'S', 0),
(6, 'polo shirt', 'red', 'M', 5),
(7, 'tank top', 'white', 'S', 200),
(8, 'tank top', 'blue', 'M', 15)

/*1*/
SELECT * FROM shirts;

/*2*/
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values (9, 'polo shirt', 'purple', 'M', 50);

/*3*/
select article, color from shirts;

/*4*/
select article, color, shirt_size, last_worn from shirts
where shirt_size = 'M';

/*5*/
update shirts set shirt_size ='L'
where article ='polo shirt';

/*6*/
UPDATE shirts set last_worn = 0 WHERE last_worn = 15;

/*7*/
UPDATE shirts set color ='off white', shirt_size = 'XS'
WHERE color = 'white';

/*8*/
DELETE from shirts where last_worn = 200;

/*9*/
DELETE from shirts where article = 'tank top';

/*10*/
DELETE from shirts;

/*11*/
drop table shirts;


