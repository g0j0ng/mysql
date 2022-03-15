-- 존재한다면 삭제
DROP DATABASE IF EXISTS notice;

-- db생성
CREATE DATABASE notice;

-- db이동
USE notice;

-- table 생성
CREATE TABLE notice_table(
	id integer,
	title varchar(40),
	content varchar(500),
	user_name varchar(10)
);

insert into notice_table(id,content,title,user_name)
	values(1,'내용들','제목','kim');
insert into notice_table
	values(2,'제목','내용들','lee');
insert into notice_table
	values(3,'제목','내용들','choi');
insert into notice_table
	values(4,'제목','내용들','kim');
insert into notice_table
	values(5,'제목','내용들','kim');

insert into notice_table(id,content,user_name)
	values(6,'제목','cho');

update notice_table set title='새로운 제목' where id=6;

update notice_table set user_name='jo' where user_name='cho';

delete from notice_table where id=6;

select * from notice_table;
    