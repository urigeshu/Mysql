use sgmysqldb1;
select * from EMPLOYEE;
select *,concat(FIRST_NAME,' ',LAST_NAME) as FULL_NAME  FROM EMPLOYEE where  FIRST_NAME LIKE 'A%' AND LAST_NAME LIKE '%D';
select concat(FIRST_NAME,' ',LAST_NAME) as FULL_NAME , E.* FROM EMPLOYEE E where E.FULL_NAME LIKE 'A%D';
select * from EMPLOYEE E;
select concat(FIRST_NAME,' ',LAST_NAME) as FULL_NAME , E.* FROM EMPLOYEE E where FIRST_NAME LIKE 'A%' AND LAST_NAME LIKE '%D';
select * from SALES;
SELECT SALES_AMOUNT,(SALES_AMOUNT/100)*10 AS '10%SALES' ,(SALES_AMOUNT/100)*20 AS '20%SALES',(SALES_AMOUNT/100)*30 AS '30%SALES' FROM SALES;
SELECT * FROM customer where CUST_CITY LIKE 'B%'or CUST_CITY LIKE 'T%'OR CUST_COUNTRY='UK' OR (OPENING_AMT=RECEIVE_AMT AND OPENING_AMT=PAYMENT_AMT);
SELECT * FROM customer WHERE OPENING_AMT=RECEIVE_AMT AND OPENING_AMT=PAYMENT_AMT;
SELECT * FROM customer WHERE OPENING_AMT=RECEIVE_AMT=OPENING_AMT=PAYMENT_AMT;
