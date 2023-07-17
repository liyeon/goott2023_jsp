<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="height:100%;">
<head>
<meta charset="UTF-8">
<title>벅스 : 회원가입</title>
<link rel="stylesheet" href="../css/style.css" media="all" />
<link rel="shortcut icon" href="../img/faviconBugs.ico" />
</head>
<body style="height:100%;">
<h1>
<img src="../img/logo.svg" alt="" />
</h1>
	<form action="joinProc.do" method="post">
        <label for="id">아이디</label>
        <input type="text" id="id" name="id" placeholder="아이디" maxlength="13" pattern="[A-Za-z0-9]+" required>
        <label for="pwd">비밀번호</label>
        <input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요" required>
        <label for="name">이름</label>
        <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" placeholder="이메일을 입력하세요">
        <label for="tel">전화번호</label>
        <input type="tel" id="tel" name="tel" placeholder="전화번호(***-****-****)" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
     
        <input type="submit" value="가입하기">
    </form>
</body>
</html>