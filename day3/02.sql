-- Active: 1686320358300@@127.0.0.1@3306@stu
create table user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    password CHAR(60),
    tel char(16)
);

CREATE table friends(
    id int PRIMARY KEY AUTO_INCREMENT,
    image CHAR(50),
    content VARCHAR(1000),
    time  DATETIME,
    address VARCHAR(50),
    user_id int,
    foreign key (user_id) references user(id)
);

CREATE Table like_comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    `like` INT,
    comment TEXT,
    user_id int,
    friends_id int,
    Foreign Key (user_id) REFERENCES user(id),
    Foreign Key (friends_id) REFERENCES friends(id)
);

CREATE table author(
    id int PRIMARY key AUTO_INCREMENT,
    name VARCHAR(30),
    sex ENUM('man','woman'),
    age TINYINT
);

CREATE table press(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name CHAR(50),
    tel char(16),
    address VARCHAR(500)
);

CREATE TABLE book(
    id CHAR(20) PRIMARY KEY,
    bname VARCHAR(30),
    price FLOAT,
    author_id INT,
    press_id INT,
    Foreign Key (author_id) REFERENCES author(id),
    Foreign Key (press_id) REFERENCES press(id)
);

SELECT c.name,c.score,h.hobby FROM class as c , hobby as h WHERE c.name=h.name;