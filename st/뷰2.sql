create view 북
as select *
from book;


create view 도서별_판매현황(아이디,금액합계,제목)
as select orders.bookid,sum(orders.saleprice),북.bookname
from orders join 북 on orders.bookid=북.bookid
group by orders.bookid;

select * from 도서별_판매현황;