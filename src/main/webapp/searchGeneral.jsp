<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>검색 결과</title>
	<style>
		.form-container {
			margin: 20px;
			padding: 20px;
			background-color: #f2f2f2;
		}
		
		table {
			border-collapse: collapse;
			width: 100%;
			margin: 20px;
		}
		
		th, td {
			text-align: left;
			padding: 8px;
			border-bottom: 1px solid #ddd;
		}
		
		th {
			background-color: #4CAF50;
			color: white;
		}
	</style>
</head>
<body>
	<div class="form-container">
		<form action="searchGeneral.do" method="get">
			<label for="searchKingdoms">국가</label><input name="searchKingdoms" type="text"/><br>
			<label for="searchBelongs">소속</label><input name="searchBelongs" type="text"/><br>
			<label for="searchName">이름</label><input name="searchName" type="text"/><br>
			<label for="searchNickname">자</label><input name="searchNickname" type="text"/><br>
			<input type="submit" value="검색">
		</form>
	</div>
	<table>
		<tr>
			<th>상세</th>
			<th>국가</th>
			<th>소속</th>
			<th>이름</th>
			<th>자</th>
			<th>통솔</th>
			<th>무력</th>
			<th>지력</th>
			<th>정치</th>
		</tr>
		<c:forEach items="${generalList }" var="general">
		<tr>
			<td><a href="searchGeneralDetail.jsp">상세</a></td>
			<td>${general. kingdoms}</td>
			<td>${general. belongs}</td>
			<td>${general. name}</td>
			<td>${general. nickname}</td>
			<td>${general. command}</td>
			<td>${general. power}</td>
			<td>${general. brain}</td>
			<td>${general. politic}</td>
		</tr>
		</c:forEach>
	</table>
  </body>
</html>