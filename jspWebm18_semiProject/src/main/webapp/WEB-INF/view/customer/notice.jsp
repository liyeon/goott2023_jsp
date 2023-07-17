<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<nav>
	<ul>
	
		<li <c:if test="${cateName eq '0'}">class="active"</c:if> ><a href="notice.do?category=0">전체</a></li>
		<li <c:if test="${cateName eq '공지사항'}">class="active"</c:if> ><a href="notice.do?cate=1">공지사항</a></li>
		<li <c:if test="${cateName eq '이벤트'}">class="active"</c:if> ><a href="notice.do?cate=2">이벤트</a></li>
		<li <c:if test="${cateName eq '소식'}">class="active"</c:if> ><a href="notice.do?cate=3">소식</a></li>
		<li <c:if test="${cateName eq '점검'}">class="active"</c:if> ><a href="notice.do?cate=4">점검</a></li>
	</ul>
</nav>
<section>
<table>
	<tr>
		<td>번호</td>
		<td>말머리</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	
<c:forEach items="${list }" var="dto">
	<tr>
		<td>${dto.bno }</td>
		<td>
				<c:choose>
					<c:when test="${dto.bcategory eq '공지사항'}">
					<span class="category">
					</c:when>
					<c:when test="${dto.bcategory eq '이벤트'}">
					<span class="category green">
					</c:when>
					<c:when test="${dto.bcategory eq '소식'}">
					<span class="category blue">
					</c:when>
					<c:otherwise>
					<span class="category gray">
					</c:otherwise>
				</c:choose>
					${dto.bcategory }
				</span>
		</td>
		<td class="left"><a href="noticeDetail.do?c=${dto.bno }&h=${dto.bhit }">${dto.btitle }</a></td>
		<td>${dto.bwriter }</td>
		<td>${dto.bdate }</td>
		<td>${dto.bhit }</td>
	</tr>
</c:forEach>

</table>
<div class="right">
<c:if test="${not empty sessionScope.uid }">
	<a href="noticeReg.do" class="btn_mini">글쓰기</a>
</c:if>
</div>
</section>
</body>
</html>