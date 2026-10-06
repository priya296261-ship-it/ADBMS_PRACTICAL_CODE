-- ADBMS STRING FUNCTIONS PROGRAM

SET SERVEROUTPUT ON;

-- =========================================
-- 1. CREATE TABLE
-- =========================================

CREATE TABLE Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Department VARCHAR2(30)
);


-- =========================================
-- 2. INSERT RECORDS
-- =========================================

INSERT INTO Student VALUES (101, 'Arun Kumar', 'Computer Science');
INSERT INTO Student VALUES (102, 'Priya Devi', 'Electronics');
INSERT INTO Student VALUES (103, 'Rahul Raj', 'Information Technology');

COMMIT;


-- =========================================
-- 3. DISPLAY TABLE
-- =========================================

SELECT * FROM Student;


-- =========================================
-- 4. UPPER()
-- =========================================

SELECT Student_Name,
       UPPER(Student_Name) AS Upper_Name
FROM Student;


-- =========================================
-- 5. LOWER()
-- =========================================

SELECT Student_Name,
       LOWER(Student_Name) AS Lower_Name
FROM Student;


-- =========================================
-- 6. INITCAP()
-- =========================================

SELECT Student_Name,
       INITCAP(Student_Name) AS Proper_Name
FROM Student;


-- =========================================
-- 7. LENGTH()
-- =========================================

SELECT Student_Name,
       LENGTH(Student_Name) AS Name_Length
FROM Student;


-- =========================================
-- 8. SUBSTR()
-- =========================================

SELECT Student_Name,
       SUBSTR(Student_Name, 1, 4) AS Sub_String
FROM Student;


-- =========================================
-- 9. INSTR()
-- =========================================

SELECT Student_Name,
       INSTR(Student_Name, 'a') AS Position
FROM Student;


-- =========================================
-- 10. CONCAT()
-- =========================================

SELECT Student_Name,
       CONCAT(Student_Name, ' - Student') AS Full_Name
FROM Student;


-- =========================================
-- 11. REPLACE()
-- =========================================

SELECT Student_Name,
       REPLACE(Student_Name, 'a', 'A') AS Replaced_Name
FROM Student;


-- =========================================
-- 12. TRIM()
-- =========================================

SELECT TRIM('   ADBMS   ') AS Trimmed_String
FROM DUAL;


-- =========================================
-- 13. LPAD()
-- =========================================

SELECT Student_Name,
       LPAD(Student_Name, 20, '*') AS Left_Padded
FROM Student;


-- =========================================
-- 14. RPAD()
-- =========================================

SELECT Student_Name,
       RPAD(Student_Name, 20, '*') AS Right_Padded
FROM Student;


-- =========================================
-- 15. LTRIM()
-- =========================================

SELECT LTRIM('   ADBMS') AS Left_Trimmed
FROM DUAL;


-- =========================================
-- 16. RTRIM()
-- =========================================

SELECT RTRIM('ADBMS   ') AS Right_Trimmed
FROM DUAL;
