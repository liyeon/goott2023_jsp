<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<table class="detail">
	<tbody>
		<tr>
			<td class="title" colspan="3">${dto.btitle }</td>
			<td>${dto.bwriter }</td>
		</tr>
		<tr class="left">
			<td>등록일 : ${dto.bdate }</td>
			<td>말머리 : &nbsp;&nbsp; 
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
			<td>글번호 : ${dto.bno}</td>
			<td>조회수 : ${dto.bhit }</td>
		</tr>
		<c:if test="${not empty dto.filesrc}">
		<tr>
			<td colspan="4" class="left">
			첨부파일 : <a class="file" href="download.do?p=upload/&f=${dto.filesrc }">${dto.filesrc }</a>
			</td>
		</tr>
		</c:if>
		<tr>
			<td colspan="4" id="content">
			<pre>
${dto.bcontent }
			</pre>
			<c:set value="${dto.filesrc }" var="filename"/>
			<c:set var="fileNm" value="${fn:toLowerCase(filename) }"/>
			<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
				<c:if test="${status.last }">
					<c:choose>
						<c:when test="${token eq 'jpg' || token eq 'png' || token eq 'gif' }">
							<img src="${pageContext.request.contextPath}/upload/${dto.filesrc }"/>
						</c:when>
					</c:choose>
				</c:if>
			</c:forTokens>
			</td>
		</tr>
	</tbody>
</table>

<div>
	<div class="mini_btn_wrap">
	<c:if test="${sessionScope.uid eq dto.bwriter}">
		<a href="noticeEdit.do?c=${dto.bno }">수정</a>
		<a href="noticeDelProc.do?c=${dto.bno }">삭제</a>
	</c:if>
		<a href="notice.do">목록</a>
	</div>
</div>
</body>
</html>