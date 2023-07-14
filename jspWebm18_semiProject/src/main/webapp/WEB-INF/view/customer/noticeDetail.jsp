<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeDetail.jsp</h3>

<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />	
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${dto.bno}</td>
			<th class="left">조회수</th>
			<td>${dto.bhit }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${dto.bwriter }</td>
			<th class="left">작성시간</th>
			<td>${dto.bdate }</td>
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3">${dto.btitle }</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">${dto.bcontent }</td>
		</tr>
		<tr>
			<th class="left" id="addfile">첨부</th>
			<td colspan="3">
			<a href="download.do?p=upload/&f=${dto.filesrc }">${dto.filesrc }</a>
			</td>
		</tr>
	</tbody>
</table>
<a href="noticeEdit.do?c=${dto.bno }">수정</a>
<a href="noticeDelProc.do?c=${dto.bno }">삭제</a>
<a href="notice.do">목록</a>
<c:set value="${dto.filesrc }" var="filename"/>
<c:set var="fileNm" value="${fn:toLowerCase(filename) }"/>
<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
	<c:if test="${status.last }">
		<c:choose>
			<c:when test="${token eq 'jpg' || token eq 'png' || token eq 'gif' }">
				${filename } :: 그림파일 <br />
				${status.last }
				<img src="${pageContext.request.contextPath}/upload/${dto.filesrc }" width="100" height="70" alt="" />
			</c:when>
			<c:otherwise>
				다른 파일
			</c:otherwise>
		</c:choose>
	</c:if>
</c:forTokens>
</body>
</html>