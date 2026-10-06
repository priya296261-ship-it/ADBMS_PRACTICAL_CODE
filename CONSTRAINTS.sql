-- ADBMS CONSTRAINTS PROGRAM

-- =========================================
-- 1. CREATE DEPARTMENT TABLE
-- =========================================

CREATE TABLE Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(30) UNIQUE
);


-- =========================================
-- 2. INSERT DEPARTMENT RECORDS
-- =========================================

INSERT INTO Department VALUES (10, 'CSE');
INSERT INTO Department VALUES (20, 'ECE');
INSERT INTO Department VALUES (30, 'IT');

COMMIT;


-- =========================================
-- 3. CREATE STUDENT TABLE
-- =========================================

CREATE TABLE Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Age NUMBER CHECK (Age >= 18),
    Marks NUMBER CHECK (Marks BETWEEN 0 AND 100),
    Dept_ID NUMBER,
    
    CONSTRAINT fk_dept
    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);


-- =========================================
-- 4. INSERT VALID RECORDS
-- =========================================

INSERT INTO Student
VALUES (101, 'Arun', 'arun@gmail.com', 20, 85, 10);

INSERT INTO Student
VALUES (102, 'Priya', 'priya@gmail.com', 21, 90, 20);

INSERT INTO Student
VALUES (103, 'Rahul', 'rahul@gmail.com', 19, 78, 30);

COMMIT;


-- =========================================
-- 5. DISPLAY RECORDS
-- =========================================

SELECT * FROM Student;

SELECT * FROM Department;


-- =========================================
-- 6. PRIMARY KEY CONSTRAINT
-- =========================================

-- Student_ID cannot contain duplicate values

-- This statement will produce an error
-- because Student_ID 101 already exists.

INSERT INTO Student
VALUES (101, 'Kaviya', 'kaviya@gmail.com', 20, 88, 10);


-- =========================================
-- 7. NOT NULL CONSTRAINT
-- =========================================

-- Student_Name cannot be NULL

-- This statement will produce an error

INSERT INTO Student
VALUES (104, NULL, 'test@gmail.com', 20, 80, 10);


-- =========================================
-- 8. UNIQUE CONSTRAINT
-- =========================================

-- Email must be unique

-- This statement will produce an error
-- because arun@gmail.com already exists.

INSERT INTO Student
VALUES (105, 'Vijay', 'arun@gmail.com', 21, 75, 20);


-- =========================================
-- 9. CHECK CONSTRAINT
-- =========================================

-- Age must be 18 or above

-- This statement will produce an error

INSERT INTO Student
VALUES (106, 'Meena', 'meena@gmail.com', 16, 80, 10);


-- Marks must be between 0 and 100

-- This statement will produce an error

INSERT INTO Student
VALUES (107, 'Suresh', 'suresh@gmail.com', 20, 150, 10);


-- =========================================
-- 10. FOREIGN KEY CONSTRAINT
-- =========================================

-- Dept_ID must exist in Department table

-- This statement will produce an error
-- because Dept_ID 50 does not exist.

INSERT INTO Student
VALUES (108, 'Vijay', 'vijay@gmail.com', 20, 80, 50);


-- =========================================
-- 11. FINAL DISPLAY
-- =========================================

SELECT * FROM Student;
