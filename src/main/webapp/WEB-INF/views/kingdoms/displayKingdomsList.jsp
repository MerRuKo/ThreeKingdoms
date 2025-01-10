<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>국가목록</title>
<script type="text/javascript" src="js/displayKingdomsList.js" ></script> 
<link rel="stylesheet" type="text/css" href="css/displayKingdomsList.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="displayKingdomsList">
	<form action="displayKingdomsList.do">
	<table>
		<tr>
			<th>국가번호</th>
			<th>국가명</th>
			<th>수도</th>
			<th>시조</th>
			<th>건국년</th>
			<th>멸망년</th>
			<th>현인원</th>
		</tr>
		<c:forEach items="${displayKingdomsList }" var="displayKingdoms">
		<tr>
			<td>${displayKingdoms. kingdomsno }</td>
			<td>${displayKingdoms. kingdomsnm }</td>
			<td>${displayKingdoms. capital }</td>
			<td>${displayKingdoms. founder }</td>
			<td>${displayKingdoms. foundyear }</td>
			<td>${displayKingdoms. fallyear }</td>
			<td>${displayKingdoms. kingdomscnt }</td>
		</tr>
		</c:forEach>
	</table>
	</form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>