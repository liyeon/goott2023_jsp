<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>노티쓰 : 글쓰기</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
<script>
	function cancelUrl(){
		location.href="notice.do";
	}
</script>
</head>
<body>
	<h1>글작성</h1>
	<form action="noticeRegProc.do" method="post">
		<label for="title">제목</label><input type="text" name="title" />
		<label for="txtFile">첨부파일</label><input type="file" name="txtFile" />
		<label for="txtcontent">내용</label>
		<textarea name="content" id="txtcontent" rows="" cols=""></textarea>
		<div class="btn_wrap">
			<input type="submit" value="저장" />
		 	<input type="button" value="취소"class="cancel" onclick="cancelUrl()"/>
		</div>
	</form>
</body>
</html>