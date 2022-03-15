drop database if exists notice_db;

create database notice_db;
use notice_db;


-- not null (필수)
-- primary key (기본키)
-- AUTO_INCREMENT (자동입력)
-- TIMESTAMP DEFAULT NOW() 현재날짜가 기본으로 찍힘

CREATE TABLE notice1(
	게시번호 INT PRIMARY KEY AUTO_INCREMENT,
	문서제목 varchar(64) NOT NULL, 
	게시일 TIMESTAMP DEFAULT NOW(),
	작성자 varchar(12) NOT NULL,
    내용 varchar(500) NOT NULL
);

INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목1','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목2','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목3','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목4','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목5','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목6','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목7','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목8','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목9','홍길동','내용.....');
INSERT INTO notice1(문서제목,작성자,내용)
	values('문서제목10','홍길동','내용.....');
    
SELECT * FROM notice1;

-- ex별로 보이게 select 게시번호 as number~~~