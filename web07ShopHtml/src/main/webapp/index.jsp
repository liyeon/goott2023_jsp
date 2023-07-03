<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쇼핑몰</title>
<link rel="stylesheet" href="./css/default.css">
<script src="./js/jquery-3.7.0.min.js"></script>
<script src="./js/s3Slider.js"></script>
<script>
        $(()=>{
            $('#s3slider').s3Slider({
                timeOut:4000
            });
        });
    </script>
</head>

<body>
	<main>
		<header>
			<div id="login">
				<a href="#">login</a> <a href="#"> join</a>
			</div>
			<div id="logo">
				<img src="./img/logo.png" alt="book">
				<nav id="top">
					<ul>
						<li><a href="./index.jsp" rel="noopener noreferrer">HOME</a></li>
						<li><a href="./company/welcome.jsp"
							rel="noopener noreferrer">COMPANY</a></li>
						<li><a href="javascript:void(0);" rel="noopener noreferrer">SOLUTIONS</a></li>
						<li><a href="./center/notice.jsp" rel="noopener noreferrer">CUSTOMER
								CENTER</a></li>
						<li><a href="javascript:void(0);" rel="noopener noreferrer">CONTACT</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<div id="main_img">
			<!-- <img src="./img/main.jpg" alt="" srcset=""> -->
			<div id="s3slider">
				<ul id="s3sliderContent">
					<li class="s3sliderImage"><img src="./img/main_img.jpg"
						width="971" height="282"> <span> 로렘 ipsum dolor sit
							amet, consecteur adipiscing elit. Nullam semper eratest<br>
							Aloiquam metus elit, blandit eu luctus vitae, dictum ist amet
							mauris. Integerut facilisis eros<br> Donec consectetur,
							velit id aliquam sagittis.
					</span></li>
					<li class="s3sliderImage"><img src="./img/main_img1.jpg"
						width="971" height="282"> <span> 로렘 ipsum dolor sit
							amet, consecteur adipiscing elit. Nullam semper eratest<br>
							Aloiquam metus elit, blandit eu luctus vitae, dictum ist amet
							mauris. Integerut facilisis eros<br> Donec consectetur,
							velit id aliquam sagittis.
					</span></li>
					<li class="s3sliderImage"><img src="./img/main_img2.jpg"
						width="971" height="282"> <span> 로렘 ipsum dolor sit
							amet, consecteur adipiscing elit. Nullam semper eratest<br>
							Aloiquam metus elit, blandit eu luctus vitae, dictum ist amet
							mauris. Integerut facilisis eros<br> Donec consectetur,
							velit id aliquam sagittis.
					</span></li>
					<div class="clear s3sliderImage"></div>
				</ul>
			</div>
		</div>
		<!--s3slider-->

		<article id="front">
			<div id="solution">

				<div id="hosting">
					<h3>Web Hosting Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nunc urna, fringilla non fringilla ut, lacinia eu urna.
						Aliquam nec urna at nisi pulvinar eleifend. Duis commodo luctus
						leo vitae feugiat. Curabitur ac sodales ante. Ut vel est</p>
				</div>

				<div id="security">
					<h3>Web Security Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nunc urna, fringilla non fringilla ut, lacinia eu urna.
						Aliquam nec urna at nisi pulvinar eleifend. Duis commodo luctus
						leo vitae feugiat. Curabitur ac sodales ante. Ut vel est</p>
				</div>

				<div id="payment">
					<h3>Web payment Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Curabitur nunc urna, fringilla non fringilla ut, lacinia eu urna.
						Aliquam nec urna at nisi pulvinar eleifend. Duis commodo luctus
						leo vitae feugiat. Curabitur ac sodales ante. Ut vel est</p>
				</div>

			</div>

			<div id="sec_news">
				<h3>
					<span class="orange">Security</span> News
				</h3>
				<dl>
					<dt>
						<a href="#">Vivamus id ligula velit, quis euismod nisi</a>
					</dt>
					<dd>
						<a href="#">Proin quis ante eget arcu tempus tempus porta vel
							ipsum. Quisque vitae nulla vel lorem cursus dignissim. Sed sit
							amet metus tortor. In hac habitasse platea dictumst. Aliquam erat
							volutpat. Aliquam massa risus, </a>
					</dd>
					<dt>
						<a href="#">Vivamus id ligula velit, quis euismod nisi</a>
					</dt>
					<dd>
						<a href="#">Proin quis ante eget arcu tempus tempus porta vel
							ipsum. Quisque vitae nulla vel lorem cursus dignissim. Sed sit
							amet metus tortor. In hac habitasse platea dictumst. Aliquam erat
							volutpat. Aliquam massa risus, </a>
					</dd>
				</dl>

			</div>

			<div id="news_notice">
				<h3 class="brown">News &amp; Notice</h3>
				<table>
					<tr>
						<td class="contxt"><a href="#">Vivamus id ligula velit,
								quis euismod nisi </a></td>
						<td><a href="#">2011.07.31</a></td>
					</tr>
					<tr>
						<td class="contxt">Fusce eros augue, tempus nec interdum eu</td>
						<td>2011.06.11</td>
					</tr>
					<tr>
						<td class="contxt">Donec eget tincidunt purus</td>
						<td>2011.05.12</td>
					</tr>
					<tr>
						<td class="contxt">Nam facilisis mauris in dui suscipit
							volutpat</td>
						<td>2011.05.08</td>
					</tr>
					<tr>
						<td class="contxt">Aenean in dui mollis leo ullamcorper
							fringilla</td>
						<td>2011.04.25</td>
					</tr>
				</table>

			</div>

		</article>
		<footer>
			<div id="copy">
				All content copyright 2023 shopHtml Inc. all rights reserved<br>
				CONTACT mail : liyeon@kakao.com Tel : +82 10-000-0000
			</div>
			<div id="social">
				<img src="./img/facebook.png" alt="facebook"> <img
					src="./img/twitter.png" alt="twitter">
			</div>
		</footer>
	</main>

</body>

</html>