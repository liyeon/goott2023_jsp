<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>제이쿼리 테슷흐</title>
<style>
#display {
	width: 200px;
	height: 200px;
	border: 3px double #333;
}
</style>
<script src="../js/jquery-3.7.0.min.js"></script>
<script>
	$(()=>{
		$("button").click(function(){
			$("#display").html("<img src='../img/pear.png'>");
		});
	});
</script>
</head>
<body>
	<div id="display">내용변경</div>
	<button type="button">display</button>
</body>
</html>