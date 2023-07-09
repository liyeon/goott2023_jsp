create table jobhm(
no varchar2(10),
work varchar2(255),
company varchar2(255),
title varchar2(255),
career varchar2(100),
academic_ability varchar2(100),
prefer_basic varchar2(100),
prefer_language varchar2(100),
employment_type varchar2(100),
salary varchar2(100),
location varchar2(255),
time varchar2(100),
position varchar2(100));

--	private String no; // 번호
--	private String work; // 직업명
--	private String company; // 회사명
--	private String title; // 공고명
--	private String career; // 경력
--	private String academic_ability;// 학력
--	private String prefer_basic;// 우대사항
--	private String prefer_language; // 선호 언어
--	private String employment_type;// 고용 유형 정규직 계약직
--	private String salary;// 연봉
--	private String location;// 지역
--	private String time;// 시간~
--	private String position;// 팀원 팀장 머 이런거
select * from jobhm;

drop table jobhm;
insert into jobhm (no) values(0);
insert into jobhm values((select max(to_number(no)+1) from jobhm),
'인테리어 설계사','(주)리연인테리어','인테리어 설계 경력직 채용모집',
'경력(1년이상)','학력무관','인근거주자','건축학','정규직(수습 2개월)', '회사내규에따름', ' 경기도 수원시 팔달구, 군포시, 수원시 권선구, 수원시 장안구, 수원시 영통구, 안산시 단원구, 안산시 상록구, 오산시, 의왕시, 서울시 동대문',
'주5일 (월~금) 09:00~18:00','면접 후 결정');
commit;
desc jobhm;