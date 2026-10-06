CREATE OR REPLACE TRIGGER Student_Insert_Trigger
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit
    VALUES (
        :NEW.Student_ID,
        'INSERT',
        SYSDATE
    );
END;
/
