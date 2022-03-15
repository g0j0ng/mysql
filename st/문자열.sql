show databases;
show tables;
desc book;
select * from book;

select count(*) as 책종류, 200000-sum(price) as 합계, 
max(price) 최고가, min(price) 최저가, avg(price) as 평균
from book;

-- 절대값 abs
select abs(50);
-- 반올림 round (소수,자릿수)
select round(15.52,0);

-- 소문자 lower, 대문자 upper 
select upper(bookname) as 책제목
from book;

-- 문자열 결합
select concat('가','나','다') as 결합;
-- bookname 을 제목(출판사)로 출력
select concat(bookname,'(',publisher,')') as 책제목
from book;

-- substr (테이블,자리,글자수)
-- customer name의 '성'만 출력
select substr(name,1,1) as 성, substr(name,2,2) as 이름
from customer;

select ascii('A') as 'A의 아스키코드', ascii('a') as 'a의 아스키코드';

select length ('korea') as '문자열 byte 길이';
select char_length ('대한민국') as '문자열 갯수';

-- replace 문자열 변경 
select replace(publisher,'굿스포츠','배드스포츠')
from book;

select orderdate
from orders;
-- y연도 두자리 Y연도 네자리/m숫자 M영어 달이름/d숫자일수 D영어붙음/a영어요일
select date_format(orderdate,'%y-%m-%d')
from orders;

select date_format(orderdate,'%a-%d-%M-%Y')
from orders;

select date_format('2014-01-01 09:15:25','%h시%i분%s초');

-- adddate(테이블,interver 날짜 day,month,year) 날짜추가
select orderdate as 구매일, adddate(orderdate,interval 3 day) as '반품 가능일'
from orders;

select datediff(orderdate,'2002-05-31') as '월드컵이후 경과일수'
from orders;

select abs(datediff('2002-05-31',sysdate())) as '월드컵이후 경과일수';
