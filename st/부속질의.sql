create table my_book(
	bookid int,
    bookname varchar(40),
    price int
);

insert into my_book values(
	1,
    '홍길동전',
    12000
);
insert into my_book values(
	2,
    '이몽룡전',
    null
);
insert into my_book values(
	3,
    null,
    21000
);

select * from my_book;

select count(*) as 책권수 from my_book;

select sum(price) as 합계,
	avg(price) as 평균 from my_book;
    
select * from my_book
where bookid is null;

select * from my_book
where bookid is not null;

select * from my_book
where bookid is not null and bookname is not null and price is not null;

select avg(price) as '3권의 평균 판매가' from my_book;

select ifnull(price,0) from my_book;
select round(avg(ifnull(price,0)),0) from my_book;

-- 내부조인 
select * from customer;
select * from customer join orders on customer.custid=orders.custid
					   join book on orders.bookid=book.bookid
group by customer.name;

-- 부속질의
select customer.name as 성명,(
	select sum(orders.saleprice)
    from orders
    where customer.custid=orders.custid
) as 합계급액
from customer 
group by customer.name;

-- 별칭
select cu.name as 성명,(
	select sum(od.saleprice)
    from orders od
    where cu.custid=od.custid
) as 합계급액
from customer as cu
group by cu.name;

-- saleprice가 10000 이상인것만 조회
select custid 아이디, sum(saleprice) '판매금액 합계'
from orders
where saleprice >= 10000
group by custid
having sum(saleprice)>=30000; 

-- 부속질의
select custid 아이디, saleprice 판매금액
from orders
where saleprice >= (
	select avg(saleprice)
    from orders
);
-- 대한민국에 해당하는 합계금액
select sum(orders.saleprice) 합계금액
from customer join orders on customer.custid=orders.custid
where address like '%대한%';

select sum(orders.saleprice) 합계금액
from orders 
where exists(
	select *
    from customer
    where orders.custid=customer.custid and address like '%대한%'
);

select sum(orders.saleprice) 합계금액
from orders 
where not exists(
	select *
    from customer
    where orders.custid=customer.custid and address like '%대한%'
);

