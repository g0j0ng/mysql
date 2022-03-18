 DROP DATABASE IF EXISTS 프랜차이즈_관리;
CREATE DATABASE 프랜차이즈_관리;
USE 프랜차이즈_관리;

CREATE TABLE 프랜차이즈_본사(
	번호 VARCHAR(10),
    회사명 VARCHAR(45) NOT NULL UNIQUE,
    대표 VARCHAR(45) NOT NULL,
    주소 VARCHAR(45) NOT NULL,
    연락처 VARCHAR(45) NOT NULL,
    PRIMARY KEY (번호)
);

CREATE TABLE 대리점(
	번호 VARCHAR(10) ,
    프랜번호 VARCHAR(10),
    대리점명 VARCHAR(45) NOT NULL,
    대표 VARCHAR(45) NOT NULL,
    주소 VARCHAR(45) NOT NULL,
    연락처 VARCHAR(45) NOT NULL,
    PRIMARY KEY (번호,프랜번호),
    CONSTRAINT fk_프랜차이즈 FOREIGN KEY (프랜번호) REFERENCES 프랜차이즈_본사(번호)
);

-- ----foreign_key 헤제 ----
-- SET foreign_key_checks=0;

--  ------- table constraint 삭제 ---------
ALTER TABLE 대리점 DROP CONSTRAINT fk_프랜차이즈;


INSERT INTO 대리점 VALUES(	'0001-1','0001','서울 홍대점','김사장','서울 서대문구 25-1','02-111-1111');
INSERT INTO 대리점 VALUES(	'0001-2','0001','서울 마포점','이사장','서울 마포 25-4','02-222-2222');
INSERT INTO 대리점 VALUES(	'0001-3','0001','서울 강남점','박사장','서울 강남 16-5','02-333-3333');
INSERT INTO 대리점 VALUES(	'0001-4','0001','인천 서구점','정사장','인천 서구  24-9','032-111-1111');
INSERT INTO 대리점 VALUES(	'0002-1','0002','대구 달서점','김사장','대구 달서구 1','052-111-1111');
INSERT INTO 대리점 VALUES(	'0002-2','0002','대구 중구점','이사장','대구 중구 2','052-222-2222');
INSERT INTO 대리점 VALUES(	'0002-3','0002','대전 서구점','최사장','대전 서구 1-2','042-111-1111');
INSERT INTO 대리점 VALUES(	'0003-1','0003','본점','오징어','인천시 미추홀구 1-12','032-222-2222');
INSERT INTO 대리점 VALUES(	'0004-1','0004','본점','성춘향','제주도 서귀포 52-4','062-111-1111');
INSERT INTO 대리점 VALUES(	'0004-2','0004','제주시점','월매','제주도 제주시 52-9','062-222-2222');
INSERT INTO 대리점 VALUES(	'0004-3','0004','한라대점','변사또','제주도 한림음 52-4','062-333-3333');
INSERT INTO 대리점 VALUES(	'0004-4','0004','마라점','강감찬','제주도 서귀포시 마라도 5-2','062-444-4444');

INSERT INTO 프랜차이즈_본사 VALUES('0001','(주)닥꼬기','홍길동','서울 마포구 1-1','010-111-1111');
INSERT INTO 프랜차이즈_본사 VALUES('0002','마징가 떡뽁끼','이몽룡','대구 달서구 2-5','010-222-2222');
INSERT INTO 프랜차이즈_본사 VALUES('0003','오나라 징어군','오징어','인천시 미추홀구 34-5','010-333-3333');
INSERT INTO 프랜차이즈_본사 VALUES('0004','맴구만 빙수','성춘향','제주도 서귀포시 48-23','010-555-5555');

--  ------- table constraint 추가 ---------
ALTER TABLE 대리점 ADD CONSTRAINT fk_프랜차이즈 FOREIGN KEY(프랜번호) REFERENCES 프랜차이즈_본사(번호);
SELECT * FROM information_schema.table_constraints WHERE table_name='대리점';


-- ----foreign_key 설정 ----
-- SET foreign_key_checks=1;



-- ----------------------------------------------------------------
-- 0002 프랜차이즈 삭제
-- ----------------------------------------------------------------
-- DELETE FROM 대리점 WHERE 프랜번호='0003';
-- DELETE FROM 프랜차이즈_본사 WHERE 번호='0003';

-- SET foreign_key_checks=0;
-- DELETE FROM 프랜차이즈_본사 WHERE 번호='0003';
-- DELETE FROM 대리점 WHERE 프랜번호='0003';
-- SET foreign_key_checks=1;

-- ALTER TABLE 대리점 DROP CONSTRAINT fk_프랜차이즈;
-- DELETE FROM 프랜차이즈_본사 WHERE 번호='0001';
-- DELETE FROM 대리점 WHERE 프랜번호='0001';
-- ALTER TABLE 대리점 ADD CONSTRAINT fk_프랜차이즈 FOREIGN KEY(프랜번호) REFERENCES 프랜차이즈_본사(번호);





























