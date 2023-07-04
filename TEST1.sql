DROP TABLE MEMBERS;
CREATE TABLE MEMBERS(
    CUSTOMER_ID VARCHAR(1) NOT NULL,
    JOIN_DATE TIMESTAMP,
    PRIMARY KEY(CUSTOMER_ID));

SELECT * FROM MEMBERS;

INSERT INTO MEMBERS VALUES(1,'09-JUL-2021 10:09:00');
INSERT INTO MEMBERS VALUES(2,'09-AUG-2022');
INSERT INTO MEMBERS VALUES(3,'08-SEP-2020 08:00:00 PM');
CREATE TABLE MENU(
    PRODUCT_ID INT NOT NULL,
    PRODUCT_NAME VARCHAR(5),
    PRICE INT CHECK(PRICE>0),
    PRIMARY KEY (PRODUCT_ID));
INSERT INTO MENU VALUES(01,'SUSHI',10);
INSERT INTO MENU VALUES(02,'RAMEN',15);
INSERT INTO MENU VALUES(03,'CURRY',20);
SELECT * FROM MENU;
CREATE TABLE SALES(
    CUSTOMER_ID VARCHAR(1) NOT NULL,
    ORDER_DATE DATE,
    PRODUCT_ID INT NOT NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES MEMBERS(CUSTOMER_ID),
    FOREIGN KEY (PRODUCT_ID) REFERENCES MENU(PRODUCT_ID));
INSERT INTO SALES VALUES (1,'03-JUN-2020',01);
INSERT INTO SALES VALUES (2,'03-JUL-2021',02);
INSERT INTO SALES VALUES (3,'03-AUG-2022',03);
SELECT * FROM SALES;
====================================================
==QUERRY(1)
SELECT MS.CUSTOMER_ID,SUM(M.PRICE) FROM MEMBERS MS
JOIN SALES S
ON MS.CUSTOMER_ID=S.CUSTOMER_ID
JOIN MENU M 
ON M.PRODUCT_ID=S.PRODUCT_ID
    GROUP BY MS.CUSTOMER_ID
    ORDER BY MS.CUSTOMER_ID;
============================================================
 ====QUERRY(2)  
 SELECT CUSTOMER_ID,COUNT(1) FROM SALES 
GROUP BY CUSTOMER_ID
    ORDER BY CUSTOMER_ID;
===============================================================
QUERRY(3)
with rstrnt as(select ms.customer_id,m.product_name,m.product_id,price from members ms
join sales s
on ms.customer_id=s.customer_id
join menu m 
on m.product_id=s.product_id)
    select  r.customer_id,sum(case when product_name like 'sushi' then price*20
    else price * 10 end) as points from rstrnt r
    group by r.customer_id
    order by r.customer_id;
=========================================================================
--querry:4
SELECT MS.CUSTOMER_ID,count(1) as no_of_items,sum(m.price) as total_amount FROM MEMBERS MS 
JOIN SALES S
ON MS.CUSTOMER_ID=S.CUSTOMER_ID
JOIN MENU M 
ON M.PRODUCT_ID=S.PRODUCT_ID
    where s.order_date<ms.join_date
    group by ms.customer_id
    order by customer_id;    
=======================================================================================
Querry:5
create view Test as(select s.customer_id,s.product_id,m.price,m.product_name,order_date,join_date from members ms
join sales s
on ms.customer_id=s.customer_id
join menu m 
on m.product_id=s.product_id
where s.order_date<ms.join_date);
select * from Test;
============================================================================================
Querry:6
with c1 as (select ms.customer_id,min(s.order_date) as first_orderdate from members ms 
join sales s 
on ms.customer_id=s.customer_id
join menu m 
on s.product_id=m.product_id
    group by ms.customer_id)
    select c.customer_id,c.first_orderdate,ms.join_date,ms.join_date-c.first_orderdate as no_ofdays from c1 c
join members ms
on c.customer_id=ms.customer_id
    where c.first_orderdate<ms.join_date
    order by c.customer_id;