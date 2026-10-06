-- Update marks of student 101
UPDATE Student
SET Marks = 88
WHERE Student_ID = 101;

-- Display updated records
SELECT * FROM Student;
