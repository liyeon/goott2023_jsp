<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<form action="noticeEditProc.do" method="post" class="write" style="margin-top:40px;">
		<h2>글수정</h2>
		<label for="title">제목</label>
		<input type="text" name="title" value="${dto.btitle }"/>
		<label for="category">카테고리</label>
		<select name="category">
			<option value="공지사항" <c:if test="${dto.bcategory eq '공지사항'}">selected</c:if> >공지사항</option>
			<option value="이벤트"<c:if test="${dto.bcategory eq '이벤트'}">selected</c:if>>이벤트</option>
			<option value="점검"<c:if test="${dto.bcategory eq '점검'}">selected</c:if>>점검</option>
			<option value="소식"<c:if test="${dto.bcategory eq '소식'}">selected</c:if>>소식</option>
		</select>
		<label for="writer">작성자</label>
		<input type="text" name="writer" value="${dto.bwriter }" readonly/>
		<label for="date">작성시간</label>
		<input type="text" name="date" value="${dto.bdate }" readonly />
		<label for="content">내용</label>
		<textarea name="content">${dto.bcontent }</textarea>
		<c:if test="${not empty dto.filesrc }">
			<label for="addfile">첨부파일</label>
			<input type="text" value="${dto.filesrc }" readonly />
		</c:if>
		
<input type="hidden" name="c" value="${dto.bno }" />
<div class="btn_wrap">
<input type="submit" value="수정하기" />
<a href="noticeDetail.do?c=${dto.bno }&h=${dto.bhit }" class="cancel">취소</a>
</div>
</form>
</body>
</html>