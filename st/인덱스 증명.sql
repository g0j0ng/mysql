/*
⑪ 인덱스 
   - “notice” 테이블의 “notice_tit”과 “user_name”을 ‘idx_notice'명칭으로 index설정하시오

⑫ 인덱스를 이용한 검색효율성 
   -  “notice” 인덱스의 설정으로 효율성이 어떻게 되었는지 설명하고 증명하시오
*/
use madang;
select * from book where  publisher = 'Pearson';

-- 컨트롤 알트 x눌러서 1개올라가는거 확인
-- 이게증명이래여