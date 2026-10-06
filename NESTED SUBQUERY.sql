CREATE TABLE Employee (
    Emp_ID INT,
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES
(1, 'Ravi', 30000),
(2, 'Priya', 50000),
(3, 'Arun', 40000),
(4, 'Meena', 60000);

-- Nested subquery
SELECT Name, Salary
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);
