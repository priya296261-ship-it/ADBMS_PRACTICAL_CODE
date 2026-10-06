SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 17;
    i NUMBER;
    flag NUMBER := 0;
BEGIN
    IF n < 2 THEN
        flag := 1;
    ELSE
        FOR i IN 2..FLOOR(SQRT(n)) LOOP
            IF MOD(n, i) = 0 THEN
                flag := 1;
                EXIT;
            END IF;
        END LOOP;
    END IF;

    IF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Prime number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Prime number');
    END IF;
END;
/
