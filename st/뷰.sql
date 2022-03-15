-- 가상테이블 view

create view 도서별_판매금액(도서명,출판사,판매금액합계)
as select book.bookname,book.publisher,sum(orders.saleprice)
from book join orders on book.bookid=orders.bookid
group by book.bookid;

show tables;
desc 도서별_판매금액;
desc book;
desc orders;
select * from 도서별_판매금액;

update book 
set publisher='축구출판사' 
where bookname like '%축구%';

select * from 도서별_판매금액;

-- view는 물리적으로 테이블이 변경되면 자동으로 변경

select count(도서명) 판매권수,출판사,sum(판매금액합계)
from 도서별_판매금액
where 판매금액합계>=15000
group by 출판사
having sum(판매금액합계)>20000
order by 출판사 asc,판매권수 desc;

/* update 안됨
update 도서별_판매금액
set 출판사='한빛출판사'
where 출판사='굿스포츠';
*/
/* insert 안됩
insert into 도서별_판매금액 values('축구를 사랑해','축구출판사',25000);
*/
/* delete 안됨
delete from 도서별_판매금액;
*/
select * from 도서별_판매금액;

create view 도서
as select *
from 도서별_판매금액;

select * from 도서;

