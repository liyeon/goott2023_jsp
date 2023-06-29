<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>제이쿼리 테슷흐</title>
<style>
body {
	text-align: center;
}

#display {
	width: 200px;
	height: 200px;
	border: 3px double #333;
	margin: 20px auto;
	display : flex;
	align-item:center;
}

button {
	padding : 10px 30px;
	font-size: 20px;
}
</style>
<script src="../js/jquery-3.7.0.min.js"></script>
<script>
	$(()=>{
		$("#b1").click(function(){
			$("#display").html("<img src='../img/pear.png'>");
			$("#b2").text($("p").text());
		});
		
		$("#b2").click(function(){
			$("#display").html("<img src='../img/mug.png'>");
		});
	});
</script>
</head>
<body>
	<p>이미지표시</p>
	<button type="button" id="b1">버튼 레이블 변경</button>
	<div id="display"></div>
	<button type="button" id="b2">버튼</button>
</body>
</html>