CREATE TABLE EMPLOYEE(
  eid NUMBER,
  ename varchar2(30),
  salary NUMBER
  );

INSERT INTOemployee VALUES(201,'ARUN',35000);
INSERT INTO employee VALUES(202,'kavin',42000);

DELETE FROM employee 
WHERE EID =202;

ROLLBACK;

select*from EMPLOYEE;
