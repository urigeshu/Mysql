----querry:4(a)
select * from dependents_tbl;
select d.*,case when substr(first_name,1,1) IN ('A','E','I','O','U') and length(first_name)>2 then substr(first_name,1,3)||substr(last_name,1,2)||'@xyzmail.com'
when substr(first_name,1,1) not in ('A','E','I','O','U') and length(last_name)>4 THEN substr(last_name,1,3)||substr(first_name,1,2)||'@xyzmail.com'    
else  substr(first_name,1,2)||substr(last_name,1,2)||'@xyzmail.com' end as COMPANY_EMAIL from dependents_tbl d;
--querry:5(A)
select * from employees_tbl;
select e.*,TO_CHAR(HIRE_DATE,'year') from employees_tbl e;
select to_char(hire_date,'year'),count(to_char(hire_date,'year')) from employees_tbl group by to_char(hire_date,'year') having count(to_char(hire_date,'year'))>1;--RETURNS THE VALUE WITH STRING IN YEAR
select to_char(hire_date,'YYYY') AS HIRE_YEAR,count(to_char(hire_date,'YYYY')) AS COUNT from employees_tbl group by to_char(hire_date,'YYYY') having count(to_char(hire_date,'YYYY'))>1
    ORDER BY HIRE_YEAR;--RETURNS IN YEAR(NUMBERS)


 select to_char(hire_date,'MM') AS HIRE_YEAR,count(to_char(hire_date,'MM')) AS COUNT from employees_tbl group by to_char(hire_date,'YYYY') having count(to_char(hire_date,'YYYY'))>1
    ORDER BY HIRE_YEAR;
    ---QUERRY:5(B)
    select to_char(hire_date,'MM') as hire_month,count(hire_date) as count from employees_tbl e group by to_char(hire_date,'MM') order by to_char(hire_date,'MM'); 
    
    --QUERRY:6(A)
SELECT * FROM EMERGENCY_CONTACTS_TBL;
SELECT C.*,CASE WHEN HOME_PHONE IS NOT NULL THEN HOME_PHONE
WHEN WORK_PHONE IS NOT NULL THEN WORK_PHONE
WHEN CELL_PHONE IS NOT NULL THEN CELL_PHONE 
ELSE '999-999-9999' END AS EMERGENCY_CONTACT FROM EMERGENCY_CONTACTS_TBL C;

--QUERRY:6(B)
SELECT 'EMPLYEE ID IS '||EMPLOYEE_ID||'IS '||FIRST_NAME||' '||LAST_NAME||'AND HER AVAILABLE PHONE IS '||CASE WHEN HOME_PHONE IS NOT NULL THEN HOME_PHONE
WHEN WORK_PHONE IS NOT NULL THEN WORK_PHONE
WHEN CELL_PHONE IS NOT NULL THEN CELL_PHONE 
ELSE '999-999-9999' END AS DETAILS FROM EMERGENCY_CONTACTS_TBL;


--QUERRY:6(A)
SELECT * FROM EMERGENCY_CONTACTS_TBL;
SELECT C.*,CASE WHEN HOME_PHONE IS NOT NULL THEN HOME_PHONE
WHEN WORK_PHONE IS NOT NULL THEN WORK_PHONE
WHEN CELL_PHONE IS NOT NULL THEN CELL_PHONE 
ELSE '999-999-9999' END AS EMERGENCY_CONTACT FROM EMERGENCY_CONTACTS_TBL C;

--QUERRY:6(B)
SELECT 'EMPLYEE ID IS '||EMPLOYEE_ID||'IS '||FIRST_NAME||' '||LAST_NAME||'AND HER AVAILABLE PHONE IS '||CASE WHEN HOME_PHONE IS NOT NULL THEN HOME_PHONE
WHEN WORK_PHONE IS NOT NULL THEN WORK_PHONE
WHEN CELL_PHONE IS NOT NULL THEN CELL_PHONE 
ELSE '999-999-9999' END AS DETAILS FROM EMERGENCY_CONTACTS_TBL;
--QUERRY:3(A)
SELECT * FROM JOBS_TBL1;
SELECT J.*, case when JOB_TITLE like '%Account%' then 'Accounting'  
    when job_title like '%Admin%' then 'Administerial'  
    WHEN JOB_TITLE LIKE '%President%' then 'Presedential' 
    when job_title like '%Manager%' then 'Managerial' 
    when job_title like '%clerk%' then 'Clerical' 
else 'others' END as jobs_class FROM JOBS_TBL J;
--QUERRY:3(B)
SELECT COUNT(case when JOB_TITLE like '%Account%' then 'Accounting'  
    when job_title like '%Admin%' then 'Administerial'  
    WHEN JOB_TITLE LIKE '%President%' then 'Presedential' 
    when job_title like '%Manager%' then 'Managerial' 
    when job_title like '%Clerk%' then 'Clerical'
else 'others' END) as COUNT_OF_EMPL, case when JOB_TITLE like '%Account%' then 'Accounting'  
    when job_title like '%Admin%' then 'Administerial'  
    WHEN JOB_TITLE LIKE '%President%' then 'Presedential' 
    when job_title like '%Manager%' then 'Managerial' 
    when job_title like '%Clerk%' then 'Clerical'
else 'others' END AS JOBS_CLASS,
    avg(min_salary) as avg_sal_low_level,
    avg(max_salary) as avg_sal_high_level, 
    (avg(min_salary)+avg(max_salary))/2 as avg_min_max_salary  
    FROM JOBS_TBL J GROUP BY (case 
    when JOB_TITLE like '%Account%' then 'Accounting'  
    when job_title like '%Admin%' then 'Administerial'  
    WHEN JOB_TITLE LIKE '%President%' then 'Presedential' 
    when job_title like '%Manager%' then 'Managerial' 
    when job_title like '%Clerk%' then 'Clerical' 
else 'others' END) 
    ORDER BY
     COUNT(case when JOB_TITLE like '%Account%' then 'Accounting'  
    when job_title like '%Admin%' then 'Administerial'  
    WHEN JOB_TITLE LIKE '%President%' then 'Presedential' 
    when job_title like '%Manager%' then 'Managerial' 
    when job_title like '%Clerk%' then 'Clerical'
else 'others' END)
 
 
 ---QUERRY:2
    SELECT 'THE ADDRESS AT LOCATIONS-ID '||(LOCATION_ID)||' IS '||(STREET_ADDRESS)||','||(CITY)||(STATE_PROVINCE)||','||(POSTAL_CODE)||','||(COUNTRY_ID) AS FULL_ADDRESS FROM LOCATIONS_TBL

---QUERRY:1(A)

SELECT REGION_ID, CASE WHEN REGION_ID=1 THEN 'EUROPE' 
    WHEN REGION_ID=2 THEN 'AMERICAS' 
    WHEN REGION_ID=3 THEN 'ASIA' 
    WHEN REGION_ID=4 THEN 'MIDDLE EAST AND AFRICA' 
    ELSE 'OTHERS' END AS REGION_NAME 
    FROM COUNTRIES_TBL 
    ORDER BY COUNTRY_NAME ASC
    
    SELECT REGION_ID, CASE WHEN REGION_ID=1 THEN 'EUROPE' 
    WHEN REGION_ID=2 THEN 'AMERICAS' 
    WHEN REGION_ID=3 THEN 'ASIA' 
    WHEN REGION_ID=4 THEN 'MIDDLE EAST AND AFRICA' 
    ELSE 'OTHERS' END AS REGION_NAME 
    FROM COUNTRIES_TBL  
    GROUP BY REGION_ID 
    ORDER BY REGION_ID ASC
    
    SELECT REGION_ID,count(REGION_ID) as count, CASE WHEN REGION_ID=1 THEN 'EUROPE' 
    WHEN REGION_ID=2 THEN 'AMERICAS' 
    WHEN REGION_ID=3 THEN 'ASIA' 
    WHEN REGION_ID=4 THEN 'MIDDLE EAST AND AFRICA' 
    ELSE 'OTHERS' END AS REGION_NAME 
    FROM COUNTRIES_TBL  
    GROUP BY REGION_ID, CASE WHEN REGION_ID=1 THEN 'EUROPE' 
    WHEN REGION_ID=2 THEN 'AMERICAS' 
    WHEN REGION_ID=3 THEN 'ASIA' 
    WHEN REGION_ID=4 THEN 'MIDDLE EAST AND AFRICA' 
    ELSE 'OTHERS' END 
  ORDER BY COUNT(REGION_ID) ASC, REGION_NAME ASC
  
  SELECT REGION_ID, count(REGION_ID) AS COUNT_REGION_ID,CASE WHEN REGION_ID=1 THEN 'EUROPE' 
    WHEN REGION_ID=2 THEN 'AMERICAS' 
    WHEN REGION_ID=3 THEN 'ASIA' 
    WHEN REGION_ID=4 THEN 'MIDDLE EAST AND AFRICA' 
    ELSE 'OTHERS' END AS REGION_NAME 
    FROM COUNTRIES_TBL  
    GROUP BY REGION_ID 
    ORDER BY COUNT(REGION_ID) ASC, REGION_NAME DESC
  -----QUERRY:1(D)
  SELECT SUBSTR(COUNTRY_NAME,1,1) AS FIRST_COUNTRY ,REGION_ID FROM COUNTRIES_TBL ORDER BY COUNTRY_NAME, REGION_ID DESC
