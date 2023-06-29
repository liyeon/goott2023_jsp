<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String habun = request.getParameter("habun");
	String stupass = request.getParameter("stupass");
	String stuhobby = request.getParameter("stuhobby");
	if (habun.equals("blue") && stupass.equals("1234")) {
		session.setAttribute("habun", habun);
		session.setAttribute("stuhobby", stuhobby);
	}
	response.sendRedirect("hobbyForm.jsp");
%>