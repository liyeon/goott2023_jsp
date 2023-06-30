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