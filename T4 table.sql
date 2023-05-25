use sgmysqldb1;
create table T4 (
alph1 char,
alph2 char,
alph3 char,
num_alph decimal(5,2),
num_alph2 decimal(5,2),
num_alph3 decimal(5,2),
sound_alph1 blob,
sound_alph2 blob,
sound_alph3 blob);
insert into T4 values('a','b','c',1.0,2.0,3.0,'abcdef@gmail.com','b is the second letter of alphabets','c is the third letter of alphabets');
select * from T4;
insert into T4 values('d','e','f',4.0, 5.0, 6.0,'D is the fourth letter of alphabets','e is the fifth letter of alphabets','f is the sixth letter of alphabets');
insert into T4 values('g','h','i',7.0, 8.0, 9.0,'g for gold goat god','H for hen hammer hold','i for icecream'),
('j','k','l',10,11,12,'J for jug jackle','k for king,kite','l for lion live long'),
('m','n','o',13,14,15,'M for monkey','N for night,nive','o for octopus,owl');
('s','t','u',19,20,21,'s for song sun son','t for tiger tour tourist','u for umbrelle under upper'),
('v','w','x',22,23,24,'v for vulture vire vampire','w for wide world wonder','x for xmas xmas tree x road'),
('y','z','a',25,26.00,1.01,'Y for yak,yellow,yarn','z for zebra zebra cross','a i wrote it again because i ran out of alphabets');
('p','q','r',16,17,18,'P for parrot,paris','q for queen quail','r for rabbit rat ring rug'),
delete from T4 where sound_alph3='a i wrote it again because i ran out of alphabets';
delete from T4 where num_alph3 like '12%';
delete from T4 where sound_alph1 between 'a'and 'd';
