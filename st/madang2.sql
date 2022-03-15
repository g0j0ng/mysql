-- 존재한다면 삭제
DROP DATABASE IF EXISTS madang2;

-- db생성
CREATE DATABASE madang2;

-- db이동
USE madang2;

-- table 생성
CREATE TABLE book(
	bookid INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	bookname varchar(20) NOT NULL,
	publisher varchar(10) NOT NULL,
	price integer
);

INSERT INTO book(bookname,publisher,price)
	values('홍길동전','연희','12000');
INSERT INTO book(bookname,publisher,price)
	values('이몽룡전','연희','25000');
INSERT INTO book(bookname,publisher,price)
	values('성춘향전','연희',null);

SELECT * FROM BOOK;
