CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Students VALUES
(1,'Anshu',22,'Delhi'),
(2,'Rahul',21,'Noida'),
(3,'Priya',23,'Mumbai');

INSERT INTO Courses VALUES
(101,'SQL'),
(102,'Python'),
(103,'Power BI');

SELECT * FROM Students;
SELECT * FROM Courses;



CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments VALUES
(1,1,101,'2025-06-01'),
(2,2,102,'2025-06-02'),
(3,3,103,'2025-06-03');

SELECT *
FROM Students
ORDER BY age DESC;

SELECT
s.student_name,
c.course_name
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id
JOIN Courses c
ON e.course_id = c.course_id;
