<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<script>
function cancelurl(){
	location.href="notice.do";
}
</script>
	
	<form action="noticeRegProc.do" class="write" method="post" enctype="multipart/form-data">
		<h2>글작성</h2>
		<label for="title">제목</label>
		<input type="text" name="title"/>
		<label for="category">카테고리</label>
		<select name="category">
			<option value="공지사항">공지사항</option>
			<option value="이벤트">이벤트</option>
			<option value="점검">점검</option>
			<option value="소식">소식</option>
		</select>
		<label for="content">내용</label>
		<textarea name="content"></textarea>
		<label for="addfile">첨부파일</label>
		<input type="file" name="file" accept="image/*"/>
		
	<input type="hidden" name="uid" value="${uid }" />
	<div class="btn_wrap">
		<input type="submit" value="save" />
		<input type="button" value="cancel" class="cancel" onclick="cancelurl()"/>
	</div>
	
	</form>
</body>
</html>