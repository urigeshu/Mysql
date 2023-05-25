create table sgmysqldb1.T3
(st_name varchar(10),
st_lastname varchar(15),
St_teachername varchar(20),
st_Grade int,
st_abscentdays int,
st_tardees int,
St_Bday date,
st_openday date,
st_closeday date);
insert T3 (st_name, st_lastname, st_teachername, st_Grade, st_abscentdays, st_tardees, st_Bday, st_openday, st_closeday) values
('Raven','Ryes','Hederick',4,8,4,'2013-03-02', '2022-08-15', '2022_05-22'),
('Clark','Griffin','Shelcross',5,9,12,'2012-03-02', '2022-08-15', '2022_05-22'),
('Bellamy','Blake','Mack',6,7,9,'2011-03-02', '2022-08-15', '2022_05-22'),
('octavia','Blake','Mack',6,7,9,'2011-03-02', '2022-08-15', '2022_05-22'),
('John', 'Murphy','Hederick',7,8,5,'2010-03-02', '2022-08-15', '2022_05-22'),
('Marcus','Kane','Leena',6,8,6,'2010-03-02', '2022-08-15', '2022_05-22'),
('Raman','Ryes','Hederick',4,8,4,'2013-03-02', '2022-08-15', '2022_05-22'),
('Benjamin','Blake','Mack',6,7,9,'2011-03-02', '2022-08-15', '2022_05-22'),
('Monty','Green','Shelcross',5,7,4,'2013-03-02', '2022-08-15', '2022_05-22'),
('Madi','Griffin','Shelcross',7,6,4,'2010-03-02', '2022-08-15', '2022_05-22');
select * from T3;
delete  from T3 where st_teachername like '%der%';
delete from T3 where st_grade between 1 and 5;
