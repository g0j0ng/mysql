show databases;
use madang;
show tables;
select * from book;
select bookid,price,publisher from book;
select bookid as '일련번호', price as '정가', publisher as '출판사' from book;
select * from book data1;
select * from book, orders;
select * from book;
select * from orders;
select bookname as '책제목', saleprice as '판매가격', orderdate as '판매일자'
from book,orders
where book.bookid=orders.bookid;
select * from book where bookid>=5;
select * from book where bookid>=5 and bookid<=8;
select * from book where bookid between 5 and 8;
select * from book where bookname = '야구의 추억' or  bookname = '야구를 부탁해';
select * from book where bookname in('야구의 추억','야구를 부탁해');
select * from book where bookname <> '야구의 추억' and bookname <> '야구를 부탁해';
select * from book where bookname not in('야구의 추억','야구를 부탁해');
select * from book where bookname like '야구%';
select * from book where bookname not like '야구%';
select * from book where bookname like '야구____';
select * from book where bookname like '___%';
select * from book where bookname like '__의___';

select * from book order by bookname asc;
select * from book order by bookname desc;