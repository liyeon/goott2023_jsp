<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="../header.jsp"%>
<article class="detail">
	<div class="detail_top">
		<h3>채용정보</h3>
		<div class="btn_wrap">
			<a href="updateForm.do?num=${dto.no}">수정</a>
			<a href="delete.do?num=${dto.no}">삭제</a>
		</div>
	</div>
	<section>
		<div class="detail_title">
			<h4>${dto.company }</h4>
			<h2>${dto.title }</h2>
		</div>
		<div class="detail_table">
			<table>
				<tr class="detail_th">
					<th colspan="2">지원자격</th>
					<th colspan="2">근무조건</th>
				</tr>
				<tr>
					<th>경력</th>
					<td class="blue">${dto.career }</td>
					<th>고용형태</th>
					<td class="blue">${dto.employment_type }</td>
				</tr>
				<tr>
					<th>학력</th>
					<td class="blue">${dto.academic_ability }</td>
					<th>급여</th>
					<td>${dto.salary }</td>
				</tr>
				<tr>
					<th>우대사항</th>
					<td>${dto.prefer_basic }</td>
					<th>지역</th>
					<td>${dto.location }</td>
				</tr>
				<tr>
					<th>우대전공</th>
					<td>${dto.prefer_language }</td>
					<th>시간</th>
					<td>${dto.time }</td>
				</tr>
				<tr>
					<th>직업</th>
					<td>${dto.work }</td>
					<th>직급</th>
					<td>${dto.position }</td>
				</tr>
			</table>
		</div>
	</section>
	<div class="center">
		<a href="#" class="btn_orange">✓ 즉시지원</a>
	</div>
	
</article>

</body>
</html>