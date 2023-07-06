<%@page import="jobkorea.dao.JobDao"%>
<%@page import="jobkorea.dto.JobDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

JobDto dto=new JobDto();
String work= request.getParameter("work"); // 직업명
String company= request.getParameter("company"); // 회사명
String title= request.getParameter("title"); // 공고명
String career= request.getParameter("career"); // 경력
String academic_ability= request.getParameter("academic_ability");// 학력
String prefer_basic= request.getParameter("prefer_basic");// 우대사항
String prefer_language= request.getParameter("prefer_language"); // 선호 언어
String employment_type= request.getParameter("employment_type");// 고용 유형 정규직 계약직
String salary= request.getParameter("salary");// 연봉
String location= request.getParameter("location");// 지역
String time= request.getParameter("time");// 시간~
String position= request.getParameter("position");// 팀원 팀장 머 이런거

dto.setWork(work);
dto.setCompany(company);
dto.setTitle(title);
dto.setCareer(career);
dto.setAcademic_ability(academic_ability);
dto.setPrefer_basic(prefer_basic);
dto.setPrefer_language(prefer_language);
dto.setEmployment_type(employment_type);
dto.setSalary(salary);
dto.setLocation(location);
dto.setTime(time);
dto.setPosition(position);
JobDao dao=new JobDao();
dao.insert(dto);
 
//목록으로 이동
response.sendRedirect("../index.jsp");
%>