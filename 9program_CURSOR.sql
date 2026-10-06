DECLARE

    -- Declare cursor
    CURSOR emp_cursor IS
        SELECT Emp_ID, Emp_Name, Department, Salary
        FROM Employee;

    -- Variables to store cursor values
    v_id Employee.Emp_ID%TYPE;
    v_name Employee.Emp_Name%TYPE;
    v_dept Employee.Department%TYPE;
    v_salary Employee.Salary%TYPE;

BEGIN

    -- Open cursor
    OPEN emp_cursor;

    LOOP

        -- Fetch records
        FETCH emp_cursor
        INTO v_id, v_name, v_dept, v_salary;

        -- Exit when no more records
        EXIT WHEN emp_cursor%NOTFOUND;

        -- Display records
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            '  Name: ' || v_name ||
            '  Department: ' || v_dept ||
            '  Salary: ' || v_salary
        );

    END LOOP;

    -- Close cursor
    CLOSE emp_cursor;

END;
/

