CREATE TABLE Employee (
    Emp_ID INT,
    Name VARCHAR(50),
    Salary INT,
    Department VARCHAR(30)
);

INSERT INTO Employee VALUES
(1, 'Ravi', 30000, 'HR'),
(2, 'Priya', 50000, 'IT'),
(3, 'Arun', 40000, 'HR'),
(4, 'Meena', 60000, 'IT'),
(5, 'Kumar', 45000, 'Sales');

-- Aggregate Functions
SELECT
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MAX(Salary) AS Maximum_Salary,
    MIN(Salary) AS Minimum_Salary
FROM Employee;
