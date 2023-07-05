-- Active: 1686320358300@@127.0.0.1@3306@stu
-- 创建数据表，反引号用于区分自定义名称和关键字
create table `class`(
   `name` VARCHAR(30),
   `age` TINYINT,
   `sex` ENUM("nan","nv"),
   `height` FLOAT
);

-- -- 查看所有数据表
show tables;

-- 删除表
DROP Table class;

CREATE TABLE `class` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `name` VARCHAR(30) NOT NULL,
   `age` TINYINT UNSIGNED,
   `sex` ENUM('w','f'),
   `score` FLOAT DEFAULT 0
);

CREATE Table `hobby` (
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `hobby` SET('sing','dance','draw') NOT NULL,
    `level` char COMMENT'commit',
    `price` DECIMAL(7,2) check(price>8000),
    `remark` TEXT
);


desc hobby;

show create table class;

show create table hobby;