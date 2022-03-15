-- create index 인덱스명 ON 테이블(속성);
-- drop index 인덱스명 on 테이블명;

-- create index idx_book on book(bookname,publisher);

select * 
from book 
where bookname like '%축구%' and publisher like '%스포츠%';

create table my_book(
	bookid int,
    bookname varchar(20),
    price int
);

insert into my_book values (1,'홍길동전',1000);
insert into my_book values (2,'이몽룡전',2000);
insert into my_book values (3,'성춘향전',3000);
insert into my_book values (4,'월매전',4000);
insert into my_book values (5,'변사또전',5000);

create index ix_book on my_book(bookname);

delete from my_book where price = 3000;

select * from my_book;

-- 통계정보 생성
analyze table book;