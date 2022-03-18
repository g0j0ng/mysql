-- --------------------------------------------------------------------------------------------------------------------------------
-- 외래키 참조무결설 확인
SELECT * FROM information_schema.table_constraints;
SELECT * FROM information_schema.table_constraints WHERE table_name='학생';
SELECT * FROM information_schema.table_constraints WHERE table_name='교수';
-- 외래키 참조무결성 해제/설정
SET foreign_key_checks=0;-- 해제
SET foreign_key_checks=1;-- 설정

  


