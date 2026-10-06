START TRANSACTION;

UPDATE Account
SET Balance = Balance + 1000
WHERE Account_No = 101;

-- Create savepoint
SAVEPOINT S1;

UPDATE Account
SET Balance = Balance + 2000
WHERE Account_No = 102;

SELECT * FROM Account;
