SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 24;
    b NUMBER := 36;
    r NUMBER;
    gcd NUMBER;
BEGIN
    WHILE b != 0 LOOP
        r := MOD(a, b);
        a := b;
        b := r;
    END LOOP;

    gcd := a;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || gcd);
END;
/
