-- -----------------------------------------------
-- jsp 사용 테이블
-- 230630
create table member1(
id varchar2(10) primary key,
pw varchar2(20),
name varchar2(20),
addr varchar2(100)
);

insert into member1 values('a','b','c','d');
select * from member1;

delete from member1 where id='a';
update member1 set name='홍1',addr='서울' where id='sdf'; 
commit;
drop table member1;

-- 학생 테이블 미션
create table studentinfo(
snum number,
sname varchar2(20),
saddr varchar2(150),
sgrade number,
sclass number,
scredit number
);

update studentinfo set sname='asd', saddr='asdasd', sgrade=2, sclass=55, scredit=11 where snum=1;
insert into studentinfo values(studentinfo_seq.nextval,'b','c',5,10,23);
select * from studentinfo order by snum asc;
create sequence studentinfo_seq;


-- pruductinfo
create table productinfo(
pnum number,
pname varchar2(225),
pitem varchar2(225),
pprice number,
pdate date
);

insert into productinfo values(productinfo_seq.nextval,'상품명1','상품소개애애애애',50000,sysdate);
update productinfo set pname='상품명11', pitem='상품소개애애애애1', pprice=40000 where pnum=1;
select * from productinfo;
create sequence productinfo_seq;
drop table productinfo;
commit;

-- 230703
--notices 테이블
create table notices(
    seq varchar2(10),
    title varchar2(200),
    writer varchar2(200),
    content varchar2(1000),
    regdate timestamp,
    hit number,
    filesrc varchar2(100)
);

insert into notices values('1','jsp프로그래밍','cj','냉무',sysdate, 0);
insert into notices values('2','jsp프로그래밍2','cj','냉무',sysdate, 0);
insert into notices values('3','jsp프로그래밍3','cj','냉무',sysdate, 0);
insert into notices values('4','jsp프로그래밍4','cj','냉무',sysdate, 0);
insert into notices values('5','jsp프로그래밍5','cj','냉무',sysdate, 0);
insert into notices values('6','jsp프로그래밍6','cj','냉무',sysdate, 0);

select * from notices;

select seq,title,writer,content,regdate,hit from notices where title like '%프락%' order by to_number(seq) desc;
select seq,title,writer,content,regdate,hit from notices where seq='1';


insert into notices values(
(select max(to_number(seq)+1) from notices),
'jsp프로그래밍','리여니이잉','냉무',sysdate, 0);

update notices set hit=hit+1 where seq='15';
-- 수정
update notices set title='수정',content='수정내용' where seq=10;

--회원정보 테이블
create table member(
id varchar2(50),
pwd varchar2(50),
name varchar2(50),
gender varchar2(10),
birth varchar2(10),
is_lunar varchar2(10),
cphone varchar2(15),
email varchar2(50),
habit varchar2(200),
regdate date
);
select * from member;

insert into member values(
'blue','111','hong','여성','2023-1-1','양력',
'111-111','a@n.com','movie',sysdate
);
commit;
rollback;

select pwd from member where id='blue'; 
commit;