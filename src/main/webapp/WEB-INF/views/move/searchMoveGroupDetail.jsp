<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>이동상세</title>
<link rel="stylesheet" type="text/css" href="css/searchMoveGroupDetail.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="searchMoveGroupDetail">
	<form action="moveGroup.do">
	<img src="images/portrait/${searchMoveGroupDetail.generalno }.png" alt="portrait" />
		<table>
        <tr>
          <th>번호</th>
          <td><input name="generalno" type="text" value="${searchMoveGroupDetail. generalno }" readonly></td>
        </tr>
        <tr>
          <th>성명</th>
          <td>${searchMoveGroupDetail. name }</td>
        </tr>
        <tr>
          <th>자</th>
          <td>${searchMoveGroupDetail. nickname }</td>
        </tr>
        <tr>
          <th>국가</th>
		  <td>
			<select name="kingdomsno">
  				<c:forEach items="${displayKingdomsList }" var="kingdoms">
    			<option value="${kingdoms. kingdomsno }" <c:if test="${kingdoms. kingdomsnm == searchMoveGroupDetail. kingdoms}">selected</c:if>>${kingdoms. kingdomsnm}</option>
  				</c:forEach>
			</select>
		</td>
        </tr>
        <tr>
          <th>소속</th>
          <td>
			<select name="belongsno">
  				<c:forEach items="${displayBelongsList }" var="belongs">
    			<option value="${belongs. belongsno }" <c:if test="${belongs. belongsnm == searchMoveGroupDetail. belongs}">selected</c:if>>${belongs. belongsnm}</option>
  				</c:forEach>
			</select>
		  </td>
        </tr>
        <tr>
		</table>
      	<input type="submit" value="변경"><br>
	</form>
	<input type="button" value="뒤로" onClick="location.href='searchMoveGroupList.do'">
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>