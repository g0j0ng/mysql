select * from book;
select * from book where bookname like '%이%';
select * from book where bookname like '%이%' order by price;
select * from book where bookname like '%이%' order by price desc;
select * from orders where custid <=3 order by bookid asc, saleprice asc, orderdate desc;

select bookname as '책제목', 
	count(book.bookid) as '판매량', 
	sum(saleprice) as '판매금액 합계' 
	from book,orders
	where book.bookid=orders.bookid
    group by orders.bookid;

select orderdate as '판매일', sum(saleprice) as '판매액', count(orderdate) as '판매건수'
from orders
group by orderdate;

select orderdate as '판매일', sum(saleprice) as '판매액', count(orderdate) as '판매건수'
from orders
group by orderdate
having count(orderdate)>=2;

select customer.name as '받는이',
	customer.address as '배송지',
	customer.phone as '받는이 연락처',
	orders.bookid as '책번호',
    orders.saleprice as '거래금액'
from customer,orders
where customer.custid=orders.custid;

/*내부조인*/
select customer.name as '받는이',
	customer.address as '배송지',
	customer.phone as '받는이 연락처',
	orders.bookid as '책번호',
    orders.saleprice as '거래금액'
from customer inner join orders on customer.custid=orders.custid;

/*아우터조인 a,b 집합중 한가지만*/
select book.bookid as '아이디',
	book.bookname as '책제목',
    book.publisher as '출판사',
    book.price as '정가',
    orders.orderid as '주문아이디',
    orders.saleprice as '판매금액',
    orders.orderdate as '판매일자'
from book left join orders on book.bookid = orders.bookid;

select book.bookid as '아이디',
	book.bookname as '책제목',
    book.publisher as '출판사',
    book.price as '정가',
    orders.orderid as '주문아이디',
    orders.saleprice as '판매금액',
    orders.orderdate as '판매일자'
from book right join orders on book.bookid = orders.bookid;


/*풀조인 union a,b의 합집합의 요소*/
select book.bookid as '아이디',
	book.bookname as '책제목',
    book.publisher as '출판사',
    book.price as '정가',
    orders.orderid as '주문아이디',
    orders.saleprice as '판매금액',
    orders.orderdate as '판매일자'
from book left join orders on book.bookid = orders.bookid
union
select book.bookid as '아이디',
	book.bookname as '책제목',
    book.publisher as '출판사',
    book.price as '정가',
    orders.orderid as '주문아이디',
    orders.saleprice as '판매금액',
    orders.orderdate as '판매일자'
from book right join orders on book.bookid = orders.bookid;

/*부속질의*/
SELECT *
FROM book
ORDER BY price;

SELECT bookname
FROM book
WHERE price=(
	SELECT MAX(price)
    FROM book
);

SELECT bookname,price
FROM book
WHERE price=(
	SELECT MAX(price)
    FROM book
    WHERE price <= (
		SELECT AVG(price)
        FROM book
    )
);

/*판매가 이루어 지지 않은 도서목록*/
SELECT bookname as '미판매 도서명'
FROM book 
WHERE bookid NOT IN(
	SELECT bookid
    FROM orders
);

/*판매가 이루어진 도서목록*/
SELECT bookname as '판매 도서명'
FROM book JOIN orders ON book.bookid=orders.bookid;

SELECT bookname as '판매 도서명'
FROM book
WHERE EXISTS(
	SELECT *
    FROM orders
    WHERE book.bookid = orders.bookid
);

/*삽입*/
/* INSERT INTO 테이블(필드명...) VALUES(값...) */
-- INSERT INTO book(bookid,bookname,publisher,price)
-- 	VALUES(11,'동계올림픽','연희출판사',25000);

/* UPDATE 테이블 set 필드명=값... where 조건식 */
/* delete from 테이블 where 조건식 */
    
    
SELECT *
FROM book;



    