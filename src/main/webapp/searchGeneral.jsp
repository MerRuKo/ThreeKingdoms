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
			<label for="searchName">이름:</label><input name="searchName" type="text"/><br>
			<label for="searchNickname">자:</label><input name="searchNickname" type="text"/><br>
			<input type="submit" value="검색">
		</form>
	</div>
	<table>
		<tr>
			<th>상품명</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>등록일자</th>
		</tr>
		<c:forEach items="${generalList }" var="general">
		<tr>
			<td>${general. name}</td>
			<td>${general. nickname}</td>
		</tr>
		</c:forEach>
		<tr>
			<td>상품 2</td>
			<td>카테고리 2</td>
			<td>200,000</td>
			<td>2022-02-01</td>
		</tr>
		<tr>
			<td>상품 3</td>
			<td>카테고리 3</td>
			<td>300,000</td>
		</tr>
	</table>
  </body>
</html>