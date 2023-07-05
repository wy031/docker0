-- Active: 1686320358300@@127.0.0.1@3306@stu
DESC hobby;

ALTER TABLE hobby add phone CHAR(11) after price;

select * FROM hobby WHERE hobby like '%sing%';

 SELECT * FROM class ORDER BY age, score DESC;

 SELECT * FROM class WHERE sex='f' ORDER BY score desc LIMIT 1;
 
 CREATE Table sanguo(
   id INT PRIMARY key AUTO_INCREMENT,
   name VARCHAR(30),
   gender ENUM('man','woman'),
   country ENUM('wei','chu','wu'),
   attack SMALLINT,
   defense TINYINT
 );

insert into sanguo VALUES
(1,'caocao','man','wei',256,63),
(2,'zhangliao','man','wei',326,69),
(3,'liubei','man','chu',220,59),
(4,'zhugeliang','man','chu',170,54),
(5,'daqiao','woman','wu',303,60),
(6,'xiaoqiao','woman','wu',330,70);

SELECT * from sanguo WHERE country='wei' and 
attack > (SELECT attack FROM sanguo WHERE country='chu' ORDER BY attack desc LIMIT 1);  

SELECT COUNT(*) from sanguo WHERE attack>300;
 
 SELECT MAX(attack) from sanguo;

 SELECT country,AVG(attack) from sanguo where country='chu';

 select COUNT(name) FROM sanguo; 

 SELECT gender,max(attack),min(attack) FROM sanguo where gender='man';

 SELECT country,COUNT(*) from sanguo GROUP BY country;

 SELECT country,avg(attack) from sanguo where gender='man' GROUP BY country HAVING AVG(attack)>200;

SELECT DISTINCT country FROM sanguo;
SELECT COUNT(DISTINCT country) FROM sanguo;








 

 
 