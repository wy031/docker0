-- Active: 1686320358300@@127.0.0.1@3306@cts

create database cts;

use cts;

CREATE TABLE class(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    caption CHAR(4) NOT NULL
);

CREATE TABLE teacher(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    tname VARCHAR(40) NOT NULL
);

CREATE Table student(sid INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(40) NOT NULL,
    gender ENUM('man','woman') NOT NULL,
    class_id INT,
    Foreign Key(class_id) REFERENCES class(cid)
    on update cascade on delete cascade   
);

CREATE Table course(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(16) NOT NULL,
    teacher_id int,
    Foreign Key (teacher_id) REFERENCES teacher(tid)
    on update CASCADE on delete CASCADE
);


INSERT INTO class(caption) VALUES('31'),('32'),('33');

INSERT INTO teacher(tname) VALUES('wei'),('qi'),('ze');

INSERT INTO student(sname,gender,class_id) VALUES('abc','man',1),('abb','woman',1),
('def','man',2),('dee','woman',2),('jkk','man',3),('oll','woman',3);

INSERT INTO course(cname,teacher_id) VALUES('shengwu',1),('sports',1),('shengwu',2);


DROP TABLE score;
CREATE TABLE score(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    number INT(3) NOT NULL,
    Foreign Key (student_id) REFERENCES student(sid)
    on update CASCADE on delete CASCADE,
    Foreign Key (course_id) REFERENCES course(cid)
    on update CASCADE on delete CASCADE
);

INSERT INTO score(student_id,course_id,number) VALUES 
(1,1,60),(1,2,59),(2,2,100),(3,2,78),(4,3,66),
(2,3,78),(5,2,77),(6,1,84),(7,1,79),(5,3,80),(3,1,59);

SELECT teacher.tname,COUNT(course.cname) 
FROM teacher left JOIN course on teacher.tid=course.teacher_id 
GROUP BY teacher.tname;

SELECT cid,cname,MAX(score.number),MIN(score.number)
FROM score LEFT JOIN course on score.course_id=course.cid
GROUP BY cid,course.cname;

SELECT student.sid,student.sname,AVG(number)
FROM student LEFT JOIN score on student.sid=score.student_id
GROUP BY student.sid,student.sname
HAVING AVG(number)>85;

SELECT student.sid,student.sname
FROM student LEFT JOIN score on student.sid=score.student_id
WHERE number>80 and course_id=2;

SELECT course.cname,COUNT(course_id)
from course LEFT JOIN score on course.cid=score.course_id
GROUP BY course.cname;

SELECT student.sname,class.caption,AVG(number)
from student INNER JOIN score on student.sid=score.student_id
INNER JOIN class on student.class_id=class.cid
GROUP BY student.sname,class.caption;
