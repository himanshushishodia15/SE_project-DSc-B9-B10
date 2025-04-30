
CREATE DATABASE smart_attendance;
USE smart_attendance;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    roll_number VARCHAR(50)
);

CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (name, roll_number) VALUES
('Alice', 'CSE01'),
('Bob', 'CSE02');
