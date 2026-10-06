SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 153;
    temp NUMBER;
    digit NUMBER;
    sum NUMBER := 0;
    digits NUMBER;
BEGIN
    temp := n;

    -- Find number of digits
    digits := LENGTH(TO_CHAR(n));

    -- Calculate Armstrong sum
    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        sum := sum + POWER(digit, digits);
        temp := FLOOR(temp / 10);
    END LOOP;

    -- Check Armstrong number
    IF sum = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is an Armstrong number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not an Armstrong number');
    END IF;
END;
/
