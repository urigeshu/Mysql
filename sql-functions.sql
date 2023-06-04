USE sgmysqldb1;
select *  from EMPLOYEE;
SELECT ASCII(EMPL_ID) FROM EMPLOYEE;
SELECT ASCII('A');
SELECT MANAGER_EMPLID,character_length(MANAGER_EMPLID) AS LEN_MANAGER_EMPLID FROM EMPLOYEE;
SELECT character_length(TRIM(FIRST_NAME)) AS LEN_TRIM_FIRSTNAME, FIRST_NAME FROM EMPLOYEE;
SELECT character_length((TRIM(FIRST_NAME))) AS TRIM_FIRSTNAME, char_length(FIRST_NAME),first_name FROM EMPLOYEE;
SELECT concat_ws('-',TRIM(FIRST_NAME),TRIM(LAST_NAME), 'THESE ARE EMPLOYEES FIRST AND LAST NAMES') FROM EMPLOYEE;
select field('subbarao',FIRST_NAME) FROM EMPLOYEE; -- need to find the use case

select find_in_set('a', 'n,a,v,a,t,h,a');-- need to find the use case
select format(298.9809,2);
select format(456789.9868,3);
select * from T1;
select insert(st_nickname,1,3,'ape') from T1;
select st_lastname, instr(st_lastname,'Z') from T1;
select st_name,lcase(st_name) from T1;
select * from EMPLOYEE;
SELECT FIRST_NAME, RIGHT(TRIM(FIRST_NAME),4) FROM EMPLOYEE;
SELECT FIRST_NAME, LEFT(TRIM(FIRST_NAME),4) FROM EMPLOYEE;
select first_name, instr(first_name,'ar') as INSTR_FNAME, position('ar' IN first_name) as Post_fname from EMPLOYEE;
select repeat(TRIM(first_name),2) from EMPLOYEE;
SELECT * FROM T1;
SELECT *,REPLACE(ST_LASTNAME,'Allen','ALL') FROM T1 WHERE SCIENCE_MARKS=78;
select rpad(LAST_NAME, 7,0) FROM EMPLOYEE;
select space(TRIM(first_name),TRIM(last_name)) from EMPLOYEE;
select repeat(CONCAT(TRIM(first_name), SPACE(20)),2) from EMPLOYEE;
SELECT *,STRCMP(MATH_MARKS,SCIENCE_MARKS) FROM T1;
select *, STRCMP(RECEIVE_AMT,PAYMENT_AMT) from customer;
select *, strcmp(cust_name,cust_city) from customer;
select * from T1;
insert into T1 values('chbalie','chicago','chally','2021-06-09','2021-05-23','2021-09-12',89,76,67);
select *, STRCMP(st_name,st_nickname) from T1;
select * from customer;
select *, substr(cust_name from 4 for 2) from customer;
select *, substr(cust_name,4,4), substring(cust_name,4,4) from customer;
select avg(math_marks)from T1 group by math_exam;
select count(math_marks) from T1;
select *, adddate(social_exam,10) from T1;

