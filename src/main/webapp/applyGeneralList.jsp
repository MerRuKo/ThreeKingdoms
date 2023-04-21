<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>승인 대기</title>
<link rel="stylesheet" type="text/css" href="css/applyGeneralList.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="applyGeneralList">
	<form action="applyGeneralList.do" method="get">
	<table>
		<tr>
			<th>신청번호</th>
			<th>승인/반려</th>
			<th>성명</th>
			<th>자</th>
			<th>통솔</th>
			<th>무력</th>
			<th>지력</th>
			<th>정치</th>
		</tr>
		<c:forEach items="${applyGeneralList }" var="applyGeneral">
		<tr>
			<td>${applyGeneral. applyno }</td>
			<td><a href="applyGeneralDetail.do?applyno=${applyGeneral. applyno }">상세</a></td>
			<td>${applyGeneral. name }</td>
			<td>${applyGeneral. nickname }</td>
			<td>${applyGeneral. command }</td>
			<td>${applyGeneral. power }</td>
			<td>${applyGeneral. brain }</td>
			<td>${applyGeneral. politic }</td>
		</tr>
		</c:forEach>
	</table>
	</form>
	<input type="button" value="뒤로" onClick="location.href='searchGeneralList.do'">
</div>
<jsp:include page="footer.jsp" />
</body>
</html>