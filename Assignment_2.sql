show databases;

use area_120;

CREATE TABLE employees (
    employee_id CHAR(10),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(60),
    phone_number CHAR(14),
    hire_date DATE,
    job_id CHAR(10),
    salary INT,
    commission_pct DECIMAL(5,3),
    manager_id CHAR(10),
    department_id CHAR(10)
);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    ('EMP001', 'Naruto', 'Uzumaki', 'naruto@google.com', '01800000000', '2023-01-15', 'JOB001', 60000, 0.05, 'MNG001', 'DPT001'),
    ('EMP002', 'Sasuke', 'Uchiha', 'sasuke@google.com', '01800000001', '2023-02-20', 'JOB002', 55000, 0.03, 'MNG001', 'DPT002'),
    ('EMP003', 'Sakura', 'Haruno', 'sakura@google.com', '01800000002', '2023-03-25', 'JOB003', 70000, 0.08, 'MNG002', 'DPT002'),
    ('EMP004', 'Hinata', 'Hyuga', 'hinata@google.com', '01800000003', '2023-04-30', 'JOB002', 52000, 0.02, 'MNG002', 'DPT004'),
    ('EMP005', 'Goku', 'Son', 'goku@google.com', '01800000004', '2023-05-05', 'JOB001', 62000, 0.06, 'MNG001', 'DPT005'),
    ('EMP006', 'Bulma', 'Briefs', 'bulma@google.com', '01800000005', '2023-06-10', 'JOB003', 72000, 0.1, 'MNG003', 'DPT006'),
    ('EMP007', 'Luffy', 'Monkey D.', 'luffy@google.com', '01800000006', '2023-07-15', 'JOB001', 61000, 0.07, 'MNG003', 'DPT007'),
    ('EMP008', 'Sailor Moon', '', 'sailor@google.com', '01800000007', '2023-08-20', 'JOB004', 80000, 0.12, 'MNG001', 'DPT008'),
    ('EMP009', 'Natsu', 'Dragneel', 'natsu@google.com', '01800000008', '2023-09-25', 'JOB002', 58000, 0.04, 'MNG004', 'DPT009'),
    ('EMP010', 'Saber', 'Artoria', 'saber@google.com', '01800000009', '2023-10-30', 'JOB003', 71000, 0.09, 'MNG004', 'DPT007');

select*from employees;

SELECT first_name, last_name, email, phone_number, hire_date, department_id FROM employees
	WHERE hire_date = (SELECT MAX(hire_date) FROM employees);
    
SELECT a.first_name, a.last_name, a.employee_id, a.phone_number, a.salary, a.department_id FROM employees a
	WHERE a.salary = (
		SELECT MIN(b.salary)
		FROM employees b
		WHERE b.department_id = a.department_id );

SELECT a.first_name, a.last_name, a.employee_id, a.commission_pct, a.department_id FROM employees a
	WHERE a.department_id = 'DPT007' AND a.commission_pct < ALL (
		SELECT b.commission_pct
		FROM employees b
		WHERE b.department_id = 'DPT005' );
        
SELECT department_id, COUNT(employee_id) AS total_employees FROM employees
	GROUP BY department_id HAVING MAX(salary) <= 30000;
    
SELECT a.department_id, a.job_id, a.commission_pct FROM employees a
	WHERE a.commission_pct < ANY (
		SELECT b.commission_pct
		FROM employees b
		WHERE a.department_id = b.department_id
		AND a.job_id != b.job_id );

SELECT DISTINCT a.manager_id FROM employees a
	WHERE NOT EXISTS (
		SELECT 1
		FROM employees b
		WHERE b.manager_id = a.manager_id
		AND b.salary < 3500 );

SELECT a.first_name, a.last_name, a.employee_id, a.email, a.salary, a.department_id, a.commission_pct FROM employees a
	WHERE a.commission_pct = (
		SELECT MIN(b.commission_pct)
		FROM employees b
		WHERE a.manager_id = b.manager_id );


drop table employees;