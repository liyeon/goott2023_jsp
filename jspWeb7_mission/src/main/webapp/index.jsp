<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="./header.jsp"%>
	<article>
		<table>
			<tbody>
				<c:forEach var="tmp" items="${list }">
					<tr onclick="location.href='./job/detail.do?num=${tmp.no }';">
						<td class="list_company"><span>${tmp.no }.</span>${tmp.company }</td>	
						<td class="list_td">
							<div>
								<h3>${tmp.title }</h3>
								<ul>
									<li>경력 ${tmp.career }↑ </li>
									<li> 학력 ${tmp.academic_ability } </li>
									<li>${tmp.salary }↑</li>
									<li>${tmp.location }</li>
									<li>${tmp.employment_type }</li>
								</ul>
							</div>
						</td>
						<td>
							<a href="#" class="btn_orange">✓ 즉시지원</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</article>
</body>
</html>