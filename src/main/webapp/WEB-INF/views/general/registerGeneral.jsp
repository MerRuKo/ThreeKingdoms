<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>신규등록</title>
<link rel="stylesheet" type="text/css" href="css/general/registerGeneral.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="registerGeneral">
	<form action="registerGeneral.do" method="post">
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
      	<input type="button" value="뒤로" onClick="location.href='displayMenuGeneral'">
    </form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>