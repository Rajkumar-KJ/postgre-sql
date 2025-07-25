CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dept VARCHAR(50)
);

INSERT INTO student (name, dept) VALUES
('Aarav Mehta', 'Computer Science'),
('Diya Sharma', 'Electronics'),
('Rohan Verma', 'Mechanical'),
('Ananya Rao', 'Computer Science'),
('Kunal Desai', 'Civil'),
('Ishita Iyer', 'Electronics'),
('Arjun Patel', 'Mechanical'),
('Sneha Joshi', 'Computer Science'),
('Varun Nair', 'Civil'),
('Meera Reddy', 'Electronics');

CREATE TABLE student_year (
    id INTEGER,
    year INTEGER,
    FOREIGN KEY (id) REFERENCES student(id)
);

INSERT INTO student_year (id, year) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 4),
(6, 2),
(7, 3),
(8, 1),
(9, 4),
(10, 2);

SELECT * FROM student;
SELECT * FROM student_year;

SELECT student.id,student.name, student.dept, student_year.year,student_year.id
FROM student FULL JOIN student_year ON student.id = student_year.id;

INSERT INTO student (name) VALUES ('Raj');
INSERT INTO student_year (id) VALUES ('11');
INSERT INTO student_year (year) VALUES ('4');
INSERT INTO student (name,dept) VALUES ('reena','AI');





SELECT student.id,student.name, student.dept, student_year.year,student_year.id
FROM student INNER JOIN student_year ON student.id = student_year.id;

SELECT student.id,student.name, student.dept, student_year.year,student_year.id
FROM student LEFT JOIN student_year ON student.id = student_year.id;

SELECT student.id,student.name, student.dept, student_year.year,student_year.id
FROM student RIGHT JOIN student_year ON student.id = student_year.id;


SELECT student.id,student.name, student.dept, student_year.year,student_year.id,COALESCE(student.dept, 'unknown') AS dept
FROM student FULL JOIN student_year ON student.id = student_year.id;






































