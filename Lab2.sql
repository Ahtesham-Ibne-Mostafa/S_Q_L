``` 
select version();
```
| version() |
|:----------|
| 10.6.9-MariaDB-1:10.6.9+maria~deb11 |

``` 
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
```

| Tables\_in\_fiddle |
|:-----------------|
| Lab\_grades |

| Field | Type | Null | Key | Default | Extra |
|:------|:-----|:-----|:----|:--------|:------|
| std\_id | char(4) | YES |  | *null* |  |
| name | varchar(30) | YES |  | *null* |  |
| major | char(3) | YES |  | *null* |  |
| section | char(1) | YES |  | *null* |  |
| days\_present | int(11) | YES |  | *null* |  |
| project\_marks | double | YES |  | *null* |  |
| cgpa | decimal(3,2) | YES |  | *null* |  |
| submission\_date | date | YES |  | *null* |  |


> ``` status
> Records: 9  Duplicates: 0  Warnings: 0
> ```

``` 
select*from Lab_grades;
```
| std\_id | name | major | section | days\_present | project\_marks | cgpa | submission\_date |
|:-------|:-----|:------|:--------|-------------:|--------------:|-----:|:----------------|
| s001 | Abir | CS | 1 | 10 | 18.5 | 3.91 | 2018-09-15 |
| s002 | Nafis | CSE | 1 | 12 | 20 | 3.86 | 2018-08-15 |
| s003 | Tasneem | CS | 1 | 8 | 18 | 3.57 | 2018-09-18 |
| s004 | Nahid | ECE | 2 | 7 | 16.5 | 3.25 | 2018-08-20 |
| s005 | Arafat | CS | 2 | 11 | 20 | 4.00 | 2018-09-13 |
| s006 | Tasneem | CSE | 1 | 12 | 17.5 | 3.70 | 2018-08-15 |
| s007 | Muhtadi | ECE | 1 | 10 | 19 | 3.67 | 2018-09-16 |
| S008 | Farhana | CSE | 2 | 6 | 15 | 2.67 | 2018-08-16 |
| s009 | Naima | CSE | 2 | 12 | 20 | 3.70 | 2018-08-14 |

``` 
delete from Lab_grades where Std_id in ('s004','s008','s009');
```

``` 
select*from Lab_grades;
```
| std\_id | name | major | section | days\_present | project\_marks | cgpa | submission\_date |
|:-------|:-----|:------|:--------|-------------:|--------------:|-----:|:----------------|
| s001 | Abir | CS | 1 | 10 | 18.5 | 3.91 | 2018-09-15 |
| s002 | Nafis | CSE | 1 | 12 | 20 | 3.86 | 2018-08-15 |
| s003 | Tasneem | CS | 1 | 8 | 18 | 3.57 | 2018-09-18 |
| s005 | Arafat | CS | 2 | 11 | 20 | 4.00 | 2018-09-13 |
| s006 | Tasneem | CSE | 1 | 12 | 17.5 | 3.70 | 2018-08-15 |
| s007 | Muhtadi | ECE | 1 | 10 | 19 | 3.67 | 2018-09-16 |

``` 
Select min(CGPA) from Lab_grades;
```
| min(CGPA) |
|----------:|
| 3.57 |

``` 
Select min(project_marks) from Lab_grades;
```
| min(project\_marks) |
|-------------------:|
| 17.5 |

``` 
Select count(*) as total_students, avg(project_marks) as average_project_marks from Lab_grades;
```
| total\_students | average\_project\_marks |
|---------------:|----------------------:|
| 6 | 18.833333333333332 |

``` 
Select sum(days_present) from Lab_grades;
```
| sum(days\_present) |
|------------------:|
| 63 |

``` 
Select major, min(cgpa) as minCGPA, max(cgpa) as  maxCGPA from Lab_grades group by major;
```
| major | minCGPA | maxCGPA |
|:------|--------:|--------:|
| CS | 3.57 | 4.00 |
| CSE | 3.70 | 3.86 |
| ECE | 3.67 | 3.67 |

``` 
Select major, count(*) total_students from Lab_grades group by major;
```
| major | total\_students |
|:------|---------------:|
| CS | 3 |
| CSE | 2 |
| ECE | 1 |

``` 
Select major, max(project_marks) as max_project, max(cgpa) as  maxCGPA from Lab_grades group by major HAVING COUNT(*) >= 2;
```
| major | max\_project | maxCGPA |
|:------|------------:|--------:|
| CS | 20 | 4.00 |
| CSE | 20 | 3.86 |

``` 
Select major, min(cgpa) as minCGPA, max(cgpa) as  maxCGPA from Lab_grades WHERE submission_date < '2018-09-16'   group by major;
```
| major | minCGPA | maxCGPA |
|:------|--------:|--------:|
| CS | 3.91 | 4.00 |
| CSE | 3.70 | 3.86 |

``` 
Select Name from Lab_grades where Project_marks=(Select max(Project_marks) from Lab_grades);
```
| Name |
|:-----|
| Nafis |
| Arafat |

``` 
Select Major, Name, Days_present from Lab_grades where (Major, Days_present) in (Select Major, min(Days_present) from Lab_grades group by Major);
```
| Major | Name | Days\_present |
|:------|:-----|-------------:|
| CSE | Nafis | 12 |
| CS | Tasneem | 8 |
| CSE | Tasneem | 12 |
| ECE | Muhtadi | 10 |

``` 
Select * from Lab_grades where Major = 'CSE' and cgpa>any (Select cgpa from Lab_grades where Major = 'CS');
```
| std\_id | name | major | section | days\_present | project\_marks | cgpa | submission\_date |
|:-------|:-----|:------|:--------|-------------:|--------------:|-----:|:----------------|
| s002 | Nafis | CSE | 1 | 12 | 20 | 3.86 | 2018-08-15 |
| s006 | Tasneem | CSE | 1 | 12 | 17.5 | 3.70 | 2018-08-15 |

``` 

```
[fiddle](https://dbfiddle.uk/hbgug5d-)
