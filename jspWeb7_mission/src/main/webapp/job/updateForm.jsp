<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>잡코리아 : 글수정</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
</head>
<body>
	<h1>직업수정</h1>
	<form action="update.do" method="post">
		<label for="num">번호</label><input type="text" name="num" value="${dto.no }" readonly="readonly"/>
		<label for="work">구인 직업</label><input type="text" name="work" value="${dto.work }" readonly="readonly"/>
		<label for="company">회사명</label><input type="text" name="company" value="${dto.company }"/>
		<label for="career">구인 경력</label><input type="text" name="career" value="${dto.career }" readonly="readonly"/>
		<label for="academic_ability">학력</label><input type="text" name="academic_ability" value="${dto.academic_ability }" readonly="readonly"/>
		<label for="prefer_basic">우대사항</label><input type="text" name="prefer_basic" value="${dto.prefer_basic }" readonly="readonly"/>
		<label for="prefer_language">우대 언어</label><input type="text" name="prefer_language"value="${dto.prefer_language }" readonly="readonly" />
		<label for="employment_type">고용유형</label><input type="text" name="employment_type" value="${dto.employment_type }" readonly="readonly"/>
		<label for="salary">연봉</label><input type="text" name="salary" value="${dto.salary }"/>
		<label for="location">지역</label><input type="text" name="location"  value="${dto.location }" readonly="readonly"/>
		<label for="time">근무시간</label><input type="text" name="time"  value="${dto.time }" readonly="readonly"/>
		<label for="position">직급</label><input type="text" name="position"  value="${dto.position }" readonly="readonly"/>
		<label for="title">공고명</label><input type="text" name="title"  value="${dto.title }"/>
	
		<div class="btn_wrap">
			<input type="submit" value="저장" />
		 	<input type="button" value="취소"class="cancel" onclick="location.href='../index.do'"/>
		</div>
	</form>
</body>
</html>