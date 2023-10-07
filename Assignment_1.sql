show databases;

use area_120;

show tables;

create table Developers(
member_id int primary key,
name varchar(30),
email varchar(30),
influence_count int,
Joining_date date,
multiplier int
);

INSERT INTO developers values
(1, 'Taylor Otwell', 'otwell@laravel.com', 739360, '2020-6-10', 10 ),
(2, 'Ryan Dahl', 'ryan@nodejs.org', 633632, '2020-04-22', 10 ),
(3, 'Brendan Eich', 'eich@javascript.com', 939570, '2020-05-07', 8 ),
(5, 'Evan You', 'you@vuejs.org', 982630, '2020-06-11', 7 ),
(6, 'Rasmus Lerdorf', 'lerdorf@php.net', 937927, '2020-06-3', 8 ),
(7, 'Guido van Rossum', 'guido@python.org', 968827, '2020-07-18', 19 ),
(8, 'Adrian Holovaty', 'adrian@djangoproject.com', 570724, '2020-05-07', 5 ),
(9, 'Simon Willison', 'simon@djangoproject.com', 864615, '2020-04-30', 4 ),
(10, 'James Gosling', 'james@java.com', 719491, '2020-05-18', 5 ),
(11, 'Rod Johnson', 'rod@spring.io', 601744, '2020-05-18', 7 ),
(12, 'Satoshi Nakamoto', 'nakamoto@blockchain.com', 630488, '2020-05-10', 10 );

select*from developers;

ALTER TABLE developers                          -- Changing the column name
CHANGE COLUMN influence_count followers int;

UPDATE developers                               -- changing all the values of a column
SET followers = followers + 10;

Alter table developers add Efficiency int;
Alter table developers drop Efficiency ;

SELECT name, ((followers * 100 / 1000000) * (multiplier * 100 / 20)) AS Efficiency FROM developers;        

SELECT name, email FROM developers ORDER BY followers DESC LIMIT 5;      -- Show the name and email of the developers who have the 5 highest numbers of followers. 

SELECT name FROM developers WHERE followers < 700000
  AND multiplier = (select MAX(multiplier) from developers and WHERE followers < 700000) ;
  
  

SELECT name
FROM developers
WHERE multipliers = (
    SELECT MAX(multipliers)
    FROM developers
    WHERE followers < 700000
);
