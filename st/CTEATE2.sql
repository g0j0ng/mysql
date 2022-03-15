DROP DATABASE IF EXISTS notice;

CREATE DATABASE notice;

USE notice;

CREATE TABLE qna(
	번호 integer,
    제목 varchar(40),
    문자 varchar(255),
    작성자 varchar(10),
    작성일 date
);

INSERT INTO qna VALUES(1,'회원가입방법1','어쩌구 저쩌구.......','홍길동','2014-01-01');
INSERT INTO qna VALUES(2,'회원가입방법2','어쩌구 저쩌구.......','이몽룡','2014-01-02');
INSERT INTO qna VALUES(3,'회원가입방법3','어쩌구 저쩌구.......','성춘향','2014-01-03');
INSERT INTO qna VALUES(4,'회원가입방법4','어쩌구 저쩌구.......','월매','2014-01-04');
INSERT INTO qna VALUES(5,'회원가입방법5','어쩌구 저쩌구.......','변사또','2014-01-05');

SELECT * FROM qna WHERE 번호>=2;

INSERT INTO qna VALUES(NULL,'회원가입방법6','DJwDJSDF','강감찬','2014-01-06');

UPDATE qna SET 번호 = 6 WHERE 번호 IS NULL;

SELECT * FROM qna;

DELETE FROM qna WHERE 번호=2;
