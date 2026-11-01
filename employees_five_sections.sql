-- 1. Create Employees Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);


-- 2. Insert Records
INSERT INTO employees (id, name, department, salary)
VALUES
    (1, 'Alice Johnson', 'Engineering', 75000.00),
    (2, 'Bob Smith', 'Engineering', 82000.00),
    (3, 'Charlie Brown', 'Marketing', 55000.00),
    (4, 'Diana Prince', 'Marketing', 62000.00),
    (5, 'Evan Wright', 'Sales', 50000.00);


-- 3. Basic Read Query
SELECT * FROM employees;


-- 4. Query with WHERE filter (Engineers only)
SELECT name, department, salary
FROM employees
WHERE department = 'Engineering';


-- 5. Query with GROUP BY (Average salary per department)
SELECT department, COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
