CREATE TABLE Numbers (
    Num1 INT,
    Num2 INT
);

INSERT INTO Numbers VALUES (25, 7);

SELECT
    Num1,
    Num2,
    ABS(-Num1) AS Absolute_Value,
    CEIL(Num1 / 4.0) AS Ceiling_Value,
    FLOOR(Num1 / 4.0) AS Floor_Value,
    ROUND(Num1 / 3.0, 2) AS Rounded_Value,
    MOD(Num1, Num2) AS Remainder,
    POWER(Num1, 2) AS Square
FROM Numbers;
