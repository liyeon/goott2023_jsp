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

p {
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
		$("p").mouseenter(function(){
			$(this).text("마우스 접근");
		});
		
		$("p").mouseleave(function(){
			$(this).text("마우스 사라짐");
		});
	});
</script>
</head>
<body>
	<p>마우스를 이곳으로 이동해보세요</p>
	<button id="b2">버튼</button>
</body>
</html>