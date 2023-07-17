create table bugsboard(
bno NUMBER,
btitle varchar2(255),
bcontent CLOB,
bwriter varchar2(100),
bcategory varchar2(100),
bdate date,
bhit NUMBER,-- 조회수
filesrc varchar2(255)
);
drop table bugsboard;
commit;

ALTER TABLE bugsboard MODIFY bcontent CLOB;
CREATE SEQUENCE bugsboard_seq
       INCREMENT BY 1 -- 증가값
       START WITH 1 -- 시작값
       MINVALUE 1 -- 최소값
       MAXVALUE 100 -- 최대값 
       NOCYCLE -- 최대값 도달시 시작값부터 다시 반복
       NOCACHE --cache 사용 여부
       NOORDER; -- 요청 순서대로 값 생성할지 여부
       
       commit;

select * from bugsboard;
insert into bugsboard values(bugsboard_seq.nextval, '제목','내용','작성자','공지사항',sysdate,0,null);
insert into bugsboard values(bugsboard_seq.nextval, '점검사항있습니다.','점검사항','관리자','점검',sysdate,0,null);
drop table bugsuser;
select * from bugsuser;
create table bugsuser(
bid varchar2(100) primary key,
bpwd varchar2(100),
bname varchar2(100),
bemail varchar2(255),
btel varchar2(100),
bregdate date
);

insert into bugsuser values('admin','1234','김리연','liyeon@gmail.com','010-0000-0000',sysdate);