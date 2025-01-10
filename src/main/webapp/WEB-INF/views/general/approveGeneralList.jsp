<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>승인대기</title>
<link rel="stylesheet" type="text/css" href="css/general/approveGeneralList.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="approveGeneralList">
	<form action="approveGeneralList.do" method="get">
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
		<c:forEach items="${approveGeneralList }" var="approveGeneral">
		<tr>
			<td>${approveGeneral. applyno }</td>
			<td><a href="approveGeneralDetail.do?applyno=${approveGeneral. applyno }">상세</a></td>
			<td>${approveGeneral. name }</td>
			<td>${approveGeneral. nickname }</td>
			<td>${approveGeneral. command }</td>
			<td>${approveGeneral. power }</td>
			<td>${approveGeneral. brain }</td>
			<td>${approveGeneral. politic }</td>
		</tr>
		</c:forEach>
	</table>
	</form>
	<input type="button" value="뒤로" onClick="location.href='displayMenuGeneral'">
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>