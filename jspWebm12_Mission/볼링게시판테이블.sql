create table bowlboard(
bno NUMBER,
btitle varchar2(255),
bcontent varchar2(1000),
bwriter varchar2(100),
bdate date,
bcnt NUMBER-- 조회수
);
drop table bowlboard;
drop sequence bowlboard_seq;
commit;
INSERT INTO bowlboard VALUES (bowlboard_seq.nextval, '글제목','글내용','작성자',sysdate,0);

update bowlboard set btitle='글제목수정',bcontent='글내용수정',bwriter='작성자수정' where bno=2;
select * from bowlboard;
select * from bowlboard where bno=1;
select * from bowlboard order by bno desc;
select bowlboard_seq.nextval from dual;-- 현재 시퀀스 값 조회
CREATE SEQUENCE bowlboard_seq
       INCREMENT BY 1 -- 증가값
       START WITH 1 -- 시작값
       MINVALUE 1 -- 최소값
       MAXVALUE 100 -- 최대값 
       NOCYCLE -- 최대값 도달시 시작값부터 다시 반복
       NOCACHE --cache 사용 여부
       NOORDER; -- 요청 순서대로 값 생성할지 여부