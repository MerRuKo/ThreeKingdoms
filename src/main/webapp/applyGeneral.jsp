<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>장수신청</title>
<link rel="stylesheet" type="text/css" href="css/applyGeneral.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="applyGeneral">
	<form action="applyGeneral.do" method="post">
		<table>
        <tr>
          <th>성명</th>
          <td><input name="name" type="text"></td>
        </tr>
        <tr>
          <th>자</th>
          <td><input name="nickname" type="text"></td>
        </tr>
        <tr>
          <th>통솔</th>
          <td><input name="command" type="text"></td>
        </tr>
        <tr>
          <th>무력</th>
          <td><input name="power" type="text"></td>
        </tr>
        <tr>
          <th>지력</th>
          <td><input name="brain" type="text"></td>
        </tr>
        <tr>
          <th>정치</th>
          <td><input name="politic" type="text"></td>
        </tr>
    	</table>
      	<textarea name="story" onclick="this.value=''">장수의 열전을 입력해주세요.</textarea>
      	<input type="submit" value="신청">
      	<input type="button" value="뒤로" onClick="location.href='searchGeneralList.do'">
    </form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>