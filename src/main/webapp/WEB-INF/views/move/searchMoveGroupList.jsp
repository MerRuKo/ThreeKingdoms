<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>이동관리</title>
<script type="text/javascript" src="js/moveGroupList.js" ></script> 
<link rel="stylesheet" type="text/css" href="css/searchMoveGroupList.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="searchMoveGroupList">
	<form action="searchMoveGroupList.do" method="get">
		<label for="searchName">성명</label><input name="searchName" type="text"/><br>
		<label for="searchNickname">　자</label><input name="searchNickname" type="text"/><br>
		<label for="searchKingdoms">국가</label><input name="searchKingdoms" type="text"/><br>
		<label for="searchBelongs">소속</label><input name="searchBelongs" type="text"/><br>
		<input type="submit" value="검색"><br>
	</form>
	<table>
		<tr>
			<th>번호</th>
			<th>이동</th>
			<th>성명</th>
			<th>자</th>
			<th>국가</th>
			<th>소속</th>
		</tr>
		<c:forEach items="${searchMoveGroupList }" var="searchMoveGroup">
		<tr>
			<td>${searchMoveGroup. generalno }</td>
			<td><a href="searchMoveGroupDetail.do?generalno=${searchMoveGroup.generalno }">상세</a></td>
			<td>${searchMoveGroup. name }</td>
			<td>${searchMoveGroup. nickname }</td>
			<td>${searchMoveGroup. kingdoms }</td>
			<td>${searchMoveGroup. belongs }</td>
		</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>