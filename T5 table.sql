use sgmysqldb1;
create table T5(
product_name varchar(20), 
quantity numeric, 
noofcustomers numeric, 
cust_phno numeric , 
MFD Date, 
EXP  date, 
updated timestamp default now() on update now());
insert into T5 values('Grains', 1000, 500, 4567899889, '2021-03-02','2031-03-05');
select * from T5;
insert into T5 values('cereals', 2000, 1000, 4256758767, '2020-03-02','2030-03-05',current_timestamp());
insert into T5 values('bread',3000,1000,4567869876,'2020-03-02','2030-03-05',current_timestamp());
insert into T5 values('butter',1000,2000,23456788,'2020-03-02','2030-03-05',current_timestamp());
insert into T5 values('snacks',3000,1000,4567869876,'2020-03-02','2030-03-05',current_timestamp());
insert into T5 values ('Toys',5000,1000,8976544567,'2022-08-20',current_time(),current_timestamp());
delete from T5 where product_name='cereals';
delete from T5 where cust_phno like '%98%';

