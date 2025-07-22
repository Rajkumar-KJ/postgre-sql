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







