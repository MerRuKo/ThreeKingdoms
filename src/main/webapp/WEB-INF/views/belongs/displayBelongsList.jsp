<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>소속목록</title>
<script type="text/javascript" src="js/belongs/displayBelongsList.js" ></script> 
<link rel="stylesheet" type="text/css" href="css/belongs/displayBelongsList.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="displayBelongsList">
	<form action="displayBelongsList.do">
	<table>
		<tr>
			<th>소속번호</th>
			<th>소속명</th>
			<th>성명</th>
			<th>도시명</th>
			<th>현인원</th>
		</tr>
		<c:forEach items="${displayBelongsList }" var="displayBelongs">
		<tr>
			<td>${displayBelongs. belongsno }</td>
			<td>${displayBelongs. belongsnm }</td>
			<td>${displayBelongs. castle }</td>
			<td>${displayBelongs. city }</td>
			<td>${displayBelongs. belongscnt }</td>
		</tr>
		</c:forEach>
	</table>
	</form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>