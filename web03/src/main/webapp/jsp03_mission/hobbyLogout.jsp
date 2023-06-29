<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.invalidate();//모든 세션 제거
	//session.removeAttribute("habun");//아이디 세션만 제거
	response.sendRedirect("hobbyForm.jsp");
%>