create table jobhm(
no varchar2(10),
work varchar2(50),
company varchar2(50),
title varchar2(50),
career varchar2(30),
academic_ability varchar2(30),
prefer_basic varchar2(20),
prefer_language varchar2(20),
employment_type varchar2(20),
salary varchar2(10),
location varchar2(30),
time varchar2(20),
position varchar2(30));
select * from jobhm;

insert into jobhm (no) values(0);
insert into jobhm (no) values((select max(to_number(no)+1) from jobhm));
commit;
desc jobhm;