-- ADBMS SET OPERATIONS PROGRAM

-- =========================================
-- 1. CREATE FIRST TABLE
-- =========================================

CREATE TABLE Student1 (
    Student_ID NUMBER,
    Student_Name VARCHAR2(50),
    Department VARCHAR2(30)
);


-- =========================================
-- 2. CREATE SECOND TABLE
-- =========================================

CREATE TABLE Student2 (
    Student_ID NUMBER,
    Student_Name VARCHAR2(50),
    Department VARCHAR2(30)
);


-- =========================================
-- 3. INSERT VALUES INTO STUDENT1
-- =========================================

INSERT INTO Student1 VALUES (101, 'Arun', 'CSE');
INSERT INTO Student1 VALUES (102, 'Priya', 'ECE');
INSERT INTO Student1 VALUES (103, 'Rahul', 'IT');
INSERT INTO Student1 VALUES (104, 'Kaviya', 'CSE');

COMMIT;


-- =========================================
-- 4. INSERT VALUES INTO STUDENT2
-- =========================================

INSERT INTO Student2 VALUES (103, 'Rahul', 'IT');
INSERT INTO Student2 VALUES (104, 'Kaviya', 'CSE');
INSERT INTO Student2 VALUES (105, 'Vijay', 'EEE');
INSERT INTO Student2 VALUES (106, 'Meena', 'ECE');

COMMIT;


-- =========================================
-- 5. DISPLAY TABLES
-- =========================================

SELECT * FROM Student1;

SELECT * FROM Student2;


-- =========================================
-- 6. UNION
-- =========================================

SELECT Student_ID, Student_Name, Department
FROM Student1

UNION

SELECT Student_ID, Student_Name, Department
FROM Student2;


-- =========================================
-- 7. UNION ALL
-- =========================================

SELECT Student_ID, Student_Name, Department
FROM Student1

UNION ALL

SELECT Student_ID, Student_Name, Department
FROM Student2;


-- =========================================
-- 8. INTERSECT
-- =========================================

SELECT Student_ID, Student_Name, Department
FROM Student1

INTERSECT

SELECT Student_ID, Student_Name, Department
FROM Student2;


-- =========================================
-- 9. MINUS
-- =========================================

SELECT Student_ID, Student_Name, Department
FROM Student1

MINUS

SELECT Student_ID, Student_Name, Department
FROM Student2;
