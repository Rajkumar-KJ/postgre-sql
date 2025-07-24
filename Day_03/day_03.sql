select * from employee_emails;

SELECT COUNT(*) FROM employees;

SELECT COUNT(email) FROM employee_emails;

SELECT * from employees;

ALTER TABLE employees ADD COLUMN salary integer;

UPDATE employees SET salary = 60000 WHERE id = 1;
UPDATE employees SET salary = 52000 WHERE id = 2;
UPDATE employees SET salary = 75000 WHERE id = 3;
UPDATE employees SET salary = 58000 WHERE id = 4;
UPDATE employees SET salary = 67000 WHERE id = 5;
UPDATE employees SET salary = 50000 WHERE id = 6;
UPDATE employees SET salary = 62000 WHERE id = 7;
UPDATE employees SET salary = 61000 WHERE id = 8;
UPDATE employees SET salary = 64000 WHERE id = 9;
UPDATE employees SET salary = 70000 WHERE id = 10;
UPDATE employees SET salary = 73000 WHERE id = 11;

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT MIN(salary), MAX(salary) FROM employees;

SELECT COUNT(salary) FROM employees where salary>70000;

SELECT role, COUNT(*) AS total_employees
FROM employees
GROUP BY role;

CREATE TABLE emp_details (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    salary INTEGER
);

INSERT INTO emp_details (name, role, salary) VALUES
('Raj Kumar', 'Developer', 60000),
('Anita Sharma', 'Developer', 62000),
('Vikram Singh', 'Manager', 75000),
('Priya Das', 'Analyst', 55000),
('Karthik Reddy', 'Developer', 63000),
('Meena Joseph', 'Manager', 77000),
('Ajay Patel', 'Analyst', 58000),
('Sneha Iyer', 'Developer', 61000),
('Ravi Kumar', 'Manager', 74000),
('Divya Nair', 'Analyst', 56000);

select * from emp_details;

select count(role) from emp_details;

SELECT role, COUNT(*) AS total_employees
FROM emp_details
GROUP BY role;

SELECT role, AVG(salary) AS avg_salary
FROM emp_details
GROUP BY role;

SELECT role, COUNT(*) AS total
FROM emp_details
GROUP BY role 
HAVING COUNT(*) > 3; 












