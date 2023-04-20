<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>장수</title>
<link rel="stylesheet" type="text/css" href="css/searchGeneral.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="searchGeneralSearch">
	<form action="searchGeneral.do" method="get">
		<label for="searchName">성명</label><input name="searchName" type="text"/><br>
		<label for="searchNickname">　자</label><input name="searchNickname" type="text"/><br>
		<label for="searchKingdoms">국가</label><input name="searchKingdoms" type="text"/><br>
		<label for="searchBelongs">소속</label><input name="searchBelongs" type="text"/><br>
		<input type="submit" value="검색"><br>
		<input type="button" value="신규신청" onClick="location.href='applyGeneral.jsp'">
		<input type="button" value="승인대기" onClick="location.href='#'">
	</form>
	<table>
		<tr>
			<th>번호</th>
			<th>상세</th>
			<th>성명</th>
			<th>자</th>
			<th>국가</th>
			<th>소속</th>
			<th>통솔</th>
			<th>무력</th>
			<th>지력</th>
			<th>정치</th>
		</tr>
		<c:forEach items="${generalList }" var="general">
		<tr>
			<td>${general. generalno}</td>
			<td><a href="searchGeneralDetail.do?generalno=${general.generalno }">상세</a></td>
			<td>${general. name}</td>
			<td>${general. nickname}</td>
			<td>${general. kingdoms}</td>
			<td>${general. belongs}</td>
			<td>${general. command}</td>
			<td>${general. power}</td>
			<td>${general. brain}</td>
			<td>${general. politic}</td>
		</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>