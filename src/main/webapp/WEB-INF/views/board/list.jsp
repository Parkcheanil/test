<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 목록</title>
</head>
<body>

	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	
	<table>
		<thead>
			<tr>
				<th>사업자번호</th>
				<th>약   칭</th>
				<th>거래처명</th>
				<th>대 표 자</th>
				<th>담 당 자</th>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${list}" var="list">
				<tr>
					<td>
						<a href="/board/view?busi_num=${list.busi_num}">${list.busi_num}</a>
					</td>
					<td>${list.short_}</td>
					<td>${list.custom}</td>
					<td>${list.ceo}</td>
					<td>${list.charge_person}</td>
				</tr>
			</c:forEach>

		</tbody>

	</table>

</body>
</html>