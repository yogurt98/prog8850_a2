-- Jingxu Lan 8823667 PROG8850
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

INSERT INTO departments (department_name, location)
VALUES 
    ('Human Resources', 'New York'),
    ('Engineering', 'San Francisco'),
    ('Sales', 'Chicago'),
    ('Marketing', 'Los Angeles');

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

ALTER TABLE departments 
MODIFY COLUMN location VARCHAR(150);

DELETE FROM departments 
WHERE department_id = 3;