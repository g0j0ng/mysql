-- 1번 데이터베이스 생성(CREATE DATABASE)하시오
drop database if exists member_db;
drop user if exists member_db@localhost;

create database member_db;
create user member_db@localhost identified with mysql_native_password by 'member_db';
-- 권한부여
grant all privileges on member_db.* to member_db@localhost with grant option;
show grants for member_db@localhost;

use member_db;

-- 2번 테이블을 생성하시오(CREATE TABLE)
CREATE TABLE login_info(
	member_num int primary key auto_increment, -- 정수형의 자동입력되는 기본키
    member_id varchar(18) not null unique, -- 중복되지 않은 필수 문자열
    member_pass varchar(18) not null -- 필수 문자열
);

-- 3번 데이터 삽입 (INSERT INTO)
insert into login_info(member_id,member_pass) -- 자동키사용
	values('id_11','pass11');
insert into login_info
	values('1','id_1','pass1');
insert into login_info
	values('2','id_2','pass2');
insert into login_info
	values('3','id_3','pass3');
insert into login_info
	values('4','id_4','pass4');  
insert into login_info
	values('5','id_5','pass5');    
insert into login_info
	values('6','id_6','pass6');
insert into login_info
	values('7','id_7','pass7');
insert into login_info
	values('8','id_8','pass8');
insert into login_info
	values('9','id_9','pass9');
insert into login_info
	values('10','id_10','pass10');    
    
-- 4번 데이터 선택 (SELECT)
select member_num 회원번호, member_id 회원아이디, member_pass 패스워드
from login_info 
order by member_num desc;

-- 5번 테이블을 생성하시오(CREATE TABLE)
CREATE TABLE notice(
	notice_num int primary key auto_increment, -- 자동입력되는 정수형 기본키
    notice_tit varchar(40) not null, 
    notice_txt varchar(1000),
    notice_date datetime default current_timestamp, -- 자동입력되는 날짜
    user_name varchar(30),
    user_num int not null
);

-- 6번 데이터 삽입 (INSERT INTO)
insert into notice(notice_tit,notice_txt,user_name,user_num)
	values('문의사항','동해물과 백두산이','홍길동','21');
    
insert into notice
	values('1','null','내용1',default,'김작성','1');
insert into notice
	values('2','제목2','내용2',default,'작성자2','2');
insert into notice
	values('3','제목3','내용3',default,'작성자3','3');
insert into notice
	values('4','제목4','내용4',default,'작성자4','4');
insert into notice
	values('5','제목5','내용5',default,'작성자5','5');
insert into notice
	values('6','제목6','내용6',default,'작성자6','6');
insert into notice
	values('7','제목7','내용7',default,'작성자7','7');
insert into notice
	values('8','제목8','내용8',default,'작성자8','8');
insert into notice
	values('9','제목9','내용9',default,'작성자9','9');
insert into notice
	values('10','제목10','내용10',default,'작성자10','10');
insert into notice
	values('11','제목11','내용11',default,'작성자11','11');
insert into notice
	values('12','제목12','내용12',default,'작성자12','12');
insert into notice
	values('13','제목13','내용13',default,'작성자13','13');
insert into notice
	values('14','제목14','내용14',default,'작성자14','14');
insert into notice
	values('15','제목15','내용15',default,'작성자15','15');
insert into notice
	values('16','제목16','내용16',default,'작성자16','16');
insert into notice
	values('17','제목17','내용17',default,'작성자17','17');
insert into notice
	values('18','제목18','내용18',default,'작성자18','18');
insert into notice
	values('19','제목19','내용19',default,'작성자19','19');
insert into notice
	values('20','제목20','내용20',default,'작성자20','20');

-- 7번 데이터 선택 (SELECT)
 select notice_num 일련번호, notice_tit 제목, notice_txt 내용, notice_date 작성일, user_name 작성자, user_num 회원번호
 from notice
 order by 작성일 asc, 일련번호 desc;

-- 8번 함수,조건 사용
select substr(user_name,1,1) 성, concat(count(*),'명') 인원수
from notice
where user_name like ('김%');

-- select substr(user_name,1,1) 성, concat(count(*),'명') 인원수
-- from notice
-- where substr(user_name,1,1) =('작')
-- group by substr(user_name,1,1);

-- 9번 데이터 삭제(DELETE)
delete from notice
where notice_tit='null';

select * from notice;

-- 10번 데이터 변경 (update)
update login_info
set member_pass='qwer1234'
where member_num='5';

select * from login_info;

-- 11번 인덱스
create index idx_notice on notice(notice_tit,user_name);
-- drop index idx_notice on notice(notice_tit,user_name);
 
-- 12번 인덱스를 이용한 검색효율성 

-- 19개올라감
						-- 유저네임은 서브키임, 
select * from notice where user_name = '홍길동'; -- query cost : 2.25, rows:20
select * from notice where notice_txt = '내용2';
select * from notice where user_num >= 5;
-- 1개올라감
select * from notice where notice_num = 5;
select * from notice where notice_num <= 10 and user_num<=10;


-- 13번 뷰의 생성(view)  
create view my_view(회원아이디,제목,내용,작성일,작성자)
as select notice.user_num,
		notice.notice_tit,
        notice.notice_txt,
        notice.notice_date,
        notice.user_name
from login_info join notice on 
		notice.user_num = login_info.member_num ;
select * from my_view;

-- 14번 뷰의 생성(view)  뷰에서 딜리트나 인서트 불가능 가상테이블이라
create view my_view2(제목,작성일,작성자,회원아이디)
as select 제목,작성일,작성자,회원아이디
from my_view;

select * from my_view2;

-- 15번 생성된 모든 database요소들을 삭제하시오(database, user....)
drop database if exists member_db;
drop user if exists member_db@localhost;

-- 권한해제
revoke all on member_db.* from member_db@localhost;
