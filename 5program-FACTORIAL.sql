-- ADBMS FACTORIAL PROGRAM

SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 5;
    fact NUMBER := 1;
    i NUMBER;
BEGIN

    FOR i IN 1..n LOOP
        fact := fact * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Number = ' || n);
    DBMS_OUTPUT.PUT_LINE('Factorial = ' || fact);

END;
/
