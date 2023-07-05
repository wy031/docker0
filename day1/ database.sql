-- Active: 1686320358300@@127.0.0.1@3306@exercise
show databases;


CREATE DATABASE exercise;

use exercise;

create table `books`(
    `id` int primary key  auto_increment,
    `bname` varchar(30) not null,
    `autnor` varchar(20),
    `press` varchar(20),
    `price` decimal(5,2),check(price<10000),
    `comment` text
);


