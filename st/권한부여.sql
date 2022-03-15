drop database if exists study;
-- study 에서 localhost 아이디 들어오면 삭제
drop user if exists study@localhost;

-- create user 아이디@위치/%모두다/아이피주소 identified with mysql_native_password by 암호
create user study@localhost identified with mysql_native_password by 'study';

create database study;

-- 권한부여
grant all privileges on study.* to study@localhost with grant option; 

create table t1(
	attr int
);

insert into t1 values(1);
insert into t1 values(2);
insert into t1 values(3);

select * from t1;