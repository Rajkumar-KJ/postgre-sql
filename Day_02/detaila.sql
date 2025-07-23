create table details(
id SERIAL PRIMARY KEY , name VARCHAR(100), role VARCHAR(50), salary INTEGER
)

INSERT INTO details(name,role,salary)
VALUES ('Raj','Developer',20000);

SELECT * FROM details;

INSERT INTO details(name,role,salary)
VALUES ('Rey','Developer',20000);

SELECT * FROM details WHERE name='Rey';

INSERT INTO details(name, role, salary) VALUES ('Rey', 'Developer', 20000);
INSERT INTO details(name, role, salary) VALUES ('Ava', 'Designer', 18000);
INSERT INTO details(name, role, salary) VALUES ('Liam', 'Tester', 15000);
INSERT INTO details(name, role, salary) VALUES ('Mia', 'Project Manager', 30000);
INSERT INTO details(name, role, salary) VALUES ('Noah', 'Developer', 22000);
INSERT INTO details(name, role, salary) VALUES ('Emma', 'HR', 17000);
INSERT INTO details(name, role, salary) VALUES ('Oliver', 'Developer', 25000);
INSERT INTO details(name, role, salary) VALUES ('Sophia', 'Designer', 20000);
INSERT INTO details(name, role, salary) VALUES ('Elijah', 'DevOps Engineer', 28000);
INSERT INTO details(name, role, salary) VALUES ('Isabella', 'QA Engineer', 19000);
INSERT INTO details(name, role, salary) VALUES ('James', 'Database Admin', 26000);
INSERT INTO details(name, role, salary) VALUES ('Charlotte', 'Support Engineer', 16000);
INSERT INTO details(name, role, salary) VALUES ('Benjamin', 'Developer', 24000);
INSERT INTO details(name, role, salary) VALUES ('Amelia', 'Business Analyst', 21000);
INSERT INTO details(name, role, salary) VALUES ('Lucas', 'Network Engineer', 23000);
INSERT INTO details(name, role, salary) VALUES ('Harper', 'UI/UX Designer', 20000);
INSERT INTO details(name, role, salary) VALUES ('Henry', 'Security Analyst', 27000);
INSERT INTO details(name, role, salary) VALUES ('Evelyn', 'Product Owner', 32000);
INSERT INTO details(name, role, salary) VALUES ('Alexander', 'Tech Lead', 35000);
INSERT INTO details(name, role, salary) VALUES ('Ella', 'Scrum Master', 29000);

SELECT * FROM details WHERE salary<=30000;

UPDATE details SET salary=50000 WHERE name='James';

SELECT name FROM details;
 
DELETE FROM details WHERE name='Lucas';

ALTER TABLE details ADD COLUMN company VARCHAR(50);

UPDATE details SET company='Amadis';

SELECT DISTINCT role FROM details;

SELECT * FROM details ORDER BY name;

SELECT * FROM details ORDER BY name DESC;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50)
);

INSERT INTO employees (name, role) VALUES
('Raj Kumar', 'Software Engineer'),
('Anita Sharma', 'Data Analyst'),
('Vikram Singh', 'Project Manager'),
('Priya Das', 'UI/UX Designer'),
('Karthik Reddy', 'DevOps Engineer'),
('Meena Joseph', 'QA Tester'),
('Ajay Patel', 'Backend Developer'),
('Sneha Iyer', 'Frontend Developer'),
('Ravi Kumar', 'Business Analyst'),
('Divya Nair', 'Product Owner');

select * from employees;

-- Create another table with id as foreign key
CREATE TABLE employee_emails (
id INTEGER, 
email VARCHAR(100) NOT NULL UNIQUE,
FOREIGN KEY (id) REFERENCES employees(id)
);

INSERT INTO employee_emails (id, email) VALUES
(1, 'raj.kumar@example.com'),
(2, 'anita.sharma@example.com'),
(3, 'vikram.singh@example.com'),
(4, 'priya.das@example.com'),
(5, 'karthik.reddy@example.com'),
(6, 'meena.joseph@example.com'),
(7, 'ajay.patel@example.com'),
(8, 'sneha.iyer@example.com'),
(9, 'ravi.kumar@example.com'),
(10, 'divya.nair@example.com');

select * from employee_emails;

SELECT employees.id,employees.name,employees.role,employee_emails.email
FROM employees INNER JOIN employee_emails ON employees.id = employee_emails.id;

WITH new_employee AS (
    INSERT INTO employees (name, role)
    VALUES ('Nisha Rao', 'AI Engineer')
    RETURNING id
)
INSERT INTO employee_emails (id, email)
SELECT id, 'nisha.rao@example.com'
FROM new_employee;

CREATE INDEX idx_email ON employee_emails(email);

SELECT * FROM pg_indexes WHERE tablename = 'employee_emails';

SELECT * FROM employee_emails WHERE email = 'karthik.reddy@example.com';













