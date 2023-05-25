use sgmysqldb1;
create table T2( 
emp_name varchar(10),
emp_company varchar(15),
emp_designation varchar(20),
emp_salary int,
emp_YOW int,
emp_insurance int,
emp_YOJ date,
emp_YOL date,
emp_Bday date);
insert into T2 (emp_name,emp_company,emp_designation,emp_salary,emp_YOW,emp_insurance,emp_YOJ,emp_YOL,emp_Bday) values
('Michaela','Manifest','Lead',50000,5,2000,'2020-07-13','2022-05-24','1989-08-05');
select * from T2;
insert into T2 (emp_name,emp_company,emp_designation,emp_salary,emp_YOW,emp_insurance,emp_YOJ,emp_YOL,emp_Bday) values
('Angelina','Manifest','Artist',30000,4,2000,'2021-02-23','2022-05-06','1990-04-23'),
('Ben','Manif','lead', 50000, 5, 4000,'2020-09-23','2022-05-12','1979-04-17'),
('Zeke','Manifest','Side Lead', 20000, 4, 3000,'2020-09-23','2022-05-12','1979-04-17'),
('Jared','NYPD','Police',60000,7,3000,'2021-02-23','2022-05-06','1990-04-23'),
('Grace','Restaurent', 'Chef', 30000,8,9000,'2020-09-23','2022-05-12','1979-04-17'),
('Sanvi','Hospital','Doctor',45000,7,4000,'2020-09-23','2022-05-12','1979-04-17');
insert into T2 (emp_name,emp_company,emp_designation,emp_salary,emp_YOW,emp_insurance,emp_YOJ,emp_YOL,emp_Bday) values
('Vance','NYPD','COP',56000, 6, 4000,'2020-09-23','2022-05-12','1979-04-17'),
('Eagan','Walmart','shopkeeper',6000,5,1000,'2020-09-23','2022-05-12','1979-04-17'),
('Roy','Walmart','shopkeeper',6000,5,1000,'2020-09-23','2022-05-12','1979-04-17');
delete from T2 where emp_name like ('M%');
delete from T2 where emp_designation="shopkeeper";
delete from T2 where emp_salary between 1000 and 20000; 
delete from T2 where emp_name like ('%e');
The end
