<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>잡코리아 : 글쓰기</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
	<h1>직업등록</h1>
	<form action="insert.jsp" method="post">
		<label for="work">구인 직업</label><input type="text" name="work" />
		<label for="company">회사명</label><input type="text" name="company" />
		<label for="career">구인 경력</label><input type="text" name="career" />
		<label for="academic_ability">학력</label><input type="text" name="academic_ability" />
		<label for="prefer_basic">우대사항</label><input type="text" name="prefer_basic" />
		<label for="prefer_language">우대 언어</label><input type="text" name="prefer_language" />
		<label for="employment_type">고용유형</label><input type="text" name="employment_type" />
		<label for="salary">연봉</label><input type="text" name="salary" />
		<label for="location">지역</label><input type="text" name="location" />
		<label for="time">근무시간</label><input type="text" name="time" />
		<label for="position">직급</label><input type="text" name="position" />
		<label for="title">공고명</label><input type="text" name="title" />
	
		<div class="btn_wrap">
			<input type="submit" value="저장" />
		 	<input type="button" value="취소"class="cancel" onclick="location.href='../index.do'"/>
		</div>
	</form>
</body>
</html>