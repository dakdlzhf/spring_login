 -- 데이터베이스 생성
create database login default CHARACTER SET utf8;
 
show databases;
 -- login 데이터베이스 사용 선언
use login;
 -- member table 생성
create table if not exists member(
	id int  not null AUTO_INCREMENT,
    userId VARCHAR(20) not null,
    password varchar(20) not null,
    address varchar(20) not null,
    tell varchar(20) not null,
    PRIMARY KEY (`id`) -- PK 는 id 컬럼으로 선언 Constraint ( 제약 조건 )
);
 -- member table 전체조회
select * from member;

