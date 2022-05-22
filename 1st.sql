REM   Script: TASK 1
REM   rafsan vai er class

CREATE TABLE CUSTOMER( 
CUSTOMER_ID NUMBER(6) PRIMARY KEY, 
CUSTOMER_NAME VARCHAR2(30), 
CITY VARCHAR2(15) 
);

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (1,'JAKE','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (2,'JAKE','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (3,'JAKY','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (4,'JAKEKY','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (5,'JAKNN','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (6,'JAME','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (7,'JAMY','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (8,'JANE','JORPUKUR');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (9,'JAME','HARINAL');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (10,'JAMY','RAJBARI');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (11,'JANE','BARISAL');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (12,'JAME','CUMILLA');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (13,'JAMY','NOAAKHALI');

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (14,'JANE','DHAKA');

SELECT CUSTOMER_ID,CITY FROM CUSTOMER;

SELECT * 
FROM CUSTOMER 
WHERE CUSTOMER_ID>=9 AND CUSTOMER_ID<=13;

UPDATE CUSTOMER 
SET CUSTOMER_NAME='JAKY CHANG' 
WHERE CUSTOMER_ID=3;

DELETE  
FROM CUSTOMER 
WHERE CUSTOMER_NAME='JAKY CHANG';

INSERT INTO CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CITY) VALUES (3,'KARIM RAKIB','JORPUKUR');

SELECT * FROM CUSTOMER  
ORDER BY CUSTOMER_ID ASC;

SELECT * FROM CUSTOMER  
ORDER BY CUSTOMER_ID DESC;

CREATE TABLE BUTTERFLY( 
 
CustomerID NUMBER(5) PRIMARY KEY, 
CustomerName VARCHAR2(35), 
ContactName VARCHAR2(20), 
Address VARCHAR2(35), 
City VARCHAR(15), 
PostalCode VARCHAR2(10), 
Country VARCHAR(15), 
 
);

CREATE TABLE BUTTERFLY( 
 
CustomerID NUMBER(5) PRIMARY KEY, 
CustomerName VARCHAR2(35), 
ContactName VARCHAR2(20), 
Address VARCHAR2(35), 
City VARCHAR(15), 
PostalCode VARCHAR2(10), 
Country VARCHAR(15) 
 
);

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES ('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country)VALUES ('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany') 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','Mexico D.F.','05021','Mexico') 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (3,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico') 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK') 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleä','S-958 22','Sweden');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','Mexico D.F.','05021','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (3,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleä','S-958 22','Sweden') 
 
SELECT * FROM BUTTERFLY;

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','Mexico D.F.','05021','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (3,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleä','S-958 22','Sweden') 
 
SELECT * FROM BUTTERFLY;

SELECT * FROM BUTTERFLY;

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','Mexico D.F.','05021','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (3,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'), 
 
INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleä','S-958 22','Sweden');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','Mexico D.F.','05021','Mexico');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (3,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');

INSERT INTO BUTTERFLY (CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country) 
VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleä','S-958 22','Sweden');

SELECT * FROM BUTTERFLY;

