show databases;

-- database 삭제
DROP DATABASE tmp;

-- database 생성
CREATE DATABASE tmp;

-- database 이동
USE tmp;

-- TABLE1 삭제
DROP TABLE table1;

-- TABLE1 생성
CREATE TABLE table1(
	attr1 integer,
    attr2 varchar(10),
    attr3 varchar(40),
    attr4 integer
);

SHOW TABLES