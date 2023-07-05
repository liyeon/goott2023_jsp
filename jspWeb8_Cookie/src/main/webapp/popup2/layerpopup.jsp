<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>팝팝팝</title>
<script src="../js/jquery-3.7.0.min.js"></script>
<script src="../js/jquery.bpopup.min.js"></script>
<script>
	goPopup=()=>{
		$("#popup").bPopup();
	}
</script>
<style>
.Pstyle {
	opacity: 0;
	display: none;
	position: relative;
	left: 100px;
	border: 5px solid #fff;
	padding: 20px;
	background-color: #550;
	width: 300px;
	height: 530px;
}

.b-close {
	position: absolute;
	right: 5px;
	top: 5px;
	padding: 0px;
	display: inline-block;
	cursor: pointer;
}

#popup {
	position: relative;
}

#imgidx {
	top: 50px;
	position: absolute;
}

img {
	position: absolute;
	top: 40px;
}
</style>
</head>
<body>
<!-- https://plugins.jquery.com/bpopup/ -->
<!-- http://dinbror.dk/blog/bpopup -->
	<input type="button" value="클릭클릭팝업" onclick="goPopup()" />
	<div id="popup" class="Pstyle">
		<span class="b-close"></span> <img src="../img/img01.png" alt="" />
		<div id="imgidx" class="content" style="height: auto; width: auto;">
			레이어팝업완성<br> 팝팝팝업크기는 div에서 조정한다.
		</div>
	</div>
</body>
</html>