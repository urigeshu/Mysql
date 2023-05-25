USE sgmysqldb1;
create table T1 (
st_name varchar(10),
st_Lastname varchar(15),
st_nickname varchar(10),
math_exam date,
science_exam date,
social_exam date,
math_marks int,
science_marks int,
social_marks int);
select * from T1;

insert into T1 (st_name, st_Lastname, st_nickname, math_exam, science_exam, social_exam, math_marks,science_marks,social_marks) values
('Allen', 'Stanz','puppy', '2021-05-21', '2021-05-22', '2021-05-23', 34, 65, 45),
('Adam', 'stanz', 'Maddy', '2021-06-21', '2021-06-22', '2021-06-23', 89, 90, 67),
('Grace', 'Jeez', 'Muffy', '2021-07-21', '2021-07-22', '2021-07-23',78,87,67),
('Paul', 'Jeez', 'molly', '2021-07-21', '2021-07-22','2021-07-23',89,76,78),
('Barry','Allen','Flash','2021-06-23','2021-06-24','2021-06-25',89,78,90);
insert into T1 (st_name, st_Lastname, st_nickname, math_exam, science_exam, social_exam, math_marks,science_marks,social_marks) values
('Iris', 'West','IWA','2021-07-24','2021-07-25','2021-07-26',89,98,80),
('Nora','Allen','NWA','2021-09-16','2021-09-17','2021-09-18',89,67,56),
('chester','Jack','CJ','2022-09-16', '2022-09-17','2022-09-18',89,97,76),
('Joe','West','JW','2022-09-16','2022-09-17','2022-09-18',78,56,89);
delete from T1 where st_nickname='CJ';

delete from T1 where math_exam='2021-07-21';
delete from T1 where science_marks between 90 and 100;
select * from T1;




