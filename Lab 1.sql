show databases;

create database 21201342_Ahtesham;

use 21201342_Ahtesham;

create table Lab_grades
(
std_id char(4),
name varchar(30),
major char(3),
section char(1),
days_present int,
project_marks double,
cgpa decimal(3,2),
submission_date date
);

show tables;

describe Lab_grades;

INSERT INTO Lab_grades values
('s001', 'Abir', 'CS', '1', 10, 18.5, 3.91, '2018-09-15' ),
('s002', 'Nafis', 'CSE', '1', 12, 20, 3.86, '2018-08-15' ),
('s003', 'Tasneem', 'CS', '1', 8, 18, 3.57, '2018-09-18' ),
('s004', 'Nahid', 'ECE', '2', 7, 16.5, 3.25, '2018-08-20' ),
('s005', 'Arafat', 'CS', '2', 11, 20, 4, '2018-09-13' ),
('s006', 'Tasneem', 'CSE', '1', 12, 17.5, 3.7, '2018-08-15' ),
('s007', 'Muhtadi', 'ECE', '1', 10, 19, 3.67, '2018-09-16' ),
('S008', 'Farhana', 'CSE', '2', 6, 15, 2.67, '2018-08-16' ),
('s009', 'Naima', 'CSE', '2', 12, 20, 3.7, '2018-08-14' );

select*from Lab_grades;

Alter table Lab_grades add Project_title char(10);
Alter table Lab_grades modify column Project_title varchar(50);
Alter table Lab_grades drop column Project_title;

Update Lab_grades set Major = 'CSE' Where name='Arafat';
Update Lab_grades set Name = 'Naheed',Project_marks =16 where Std_ID='s004';

Select Std_ID,Name,Project_marks from Lab_grades;

Select Std_ID,Name,Project_marks+Days_Present/12*5 as Total_marks from Lab_grades;

select distinct major from Lab_grades;