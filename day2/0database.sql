-- Active: 1686320358300@@127.0.0.1@3306@stu

insert into class values
(1,'wy',15,'f',100),
(2,'wj',18,'w',100);

insert into class (name,age,sex) values
('a',18,'f'),
('ab',19,'w');

show create table class;

insert into class (name,age,score) VALUES
('j',20,90),
('y',40,70);

insert into class (name,age,sex,score) VALUES
('yo',21,'f',59),
('cc',26,'w',66),
('hh',25,'f',88);

show create table hobby;

insert into hobby (name,hobby,level,price,remark) VALUES
("lili","sing,dance",'b',8888,'ok'),
("lily","draw",'c',11111,'no'),
("wyyy","dance",'a',8888,'ok'),
("gggo","dance,sing",'a',9999,'ok');


select name,age from class;

select * from class where age > 8; 
select * from class where age between 8 and 100; 
select * from class where age in (8,20); 
select * from class where sex is null;

select * from class where sex='f' and age>20;
