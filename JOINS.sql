-- ADBMS JOINS PROGRAM

SET SERVEROUTPUT ON;

-- =========================================
-- 1. CREATE DEPARTMENT TABLE
-- =========================================

CREATE TABLE Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(30)
);


-- =========================================
-- 2. CREATE EMPLOYEE TABLE
-- =========================================

CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50),
    Salary NUMBER,
    Dept_ID NUMBER
);


-- =========================================
-- 3. INSERT DEPARTMENT RECORDS
-- =========================================

INSERT INTO Department VALUES (10, 'CSE');
INSERT INTO Department VALUES (20, 'ECE');
INSERT INTO Department VALUES (30, 'IT');
INSERT INTO Department VALUES (40, 'EEE');

COMMIT;


-- =========================================
-- 4. INSERT EMPLOYEE RECORDS
-- =========================================

INSERT INTO Employee VALUES (101, 'Arun', 25000, 10);
INSERT INTO Employee VALUES (102, 'Priya', 30000, 20);
INSERT INTO Employee VALUES (103, 'Rahul', 28000, 30);
INSERT INTO Employee VALUES (104, 'Kaviya', 35000, 10);
INSERT INTO Employee VALUES (105, 'Vijay', 32000, NULL);

COMMIT;


-- =========================================
-- 5. DISPLAY TABLES
-- =========================================

SELECT * FROM Employee;

SELECT * FROM Department;


-- =========================================
-- 6. INNER JOIN
-- =========================================

SELECT
    Employee.Emp_ID,
    Employee.Emp_Name,
    Employee.Salary,
    Department.Dept_Name
FROM Employee
INNER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;


-- =========================================
-- 7. LEFT OUTER JOIN
-- =========================================

SELECT
    Employee.Emp_ID,
    Employee.Emp_Name,
    Employee.Salary,
    Department.Dept_Name
FROM Employee
LEFT OUTER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;


-- =========================================
-- 8. RIGHT OUTER JOIN
-- =========================================

SELECT
    Employee.Emp_ID,
    Employee.Emp_Name,
    Employee.Salary,
    Department.Dept_Name
FROM Employee
RIGHT OUTER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;


-- =========================================
-- 9. FULL OUTER JOIN
-- =========================================

SELECT
    Employee.Emp_ID,
    Employee.Emp_Name,
    Employee.Salary,
    Department.Dept_Name
FROM Employee
FULL OUTER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;


-- =========================================
-- 10. CROSS JOIN
-- =========================================

SELECT
    Employee.Emp_Name,
    Department.Dept_Name
FROM Employee
CROSS JOIN Department;


-- =========================================
-- 11. SELF JOIN
-- =========================================

-- Create Manager column
ALTER TABLE Employee
ADD Manager_ID NUMBER;

-- Update manager details
UPDATE Employee
SET Manager_ID = 101
WHERE Emp_ID IN (102, 103);

UPDATE Employee
SET Manager_ID = 102
WHERE Emp_ID = 104;

COMMIT;

-- SELF JOIN
SELECT
    E.Emp_Name AS Employee,
    M.Emp_Name AS Manager
FROM Employee E
LEFT JOIN Employee M
ON E.Manager_ID = M.Emp_ID;
