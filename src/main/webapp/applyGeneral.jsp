<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>장수 상세</title>
<link rel="stylesheet" type="text/css" href="css/applyGeneral.css">
</head>
<body>
<jsp:include page="header.jsp" />
    <div class="applyGeneral">
		<table>
        <tr>
          <th>성명</th>
          <td><input name="applyName" type="text"></td>
        </tr>
        <tr>
          <th>자</th>
          <td><input name="applyNickname" type="text"></td>
        </tr>
        <tr>
          <th>국가</th>
          <td><input name="applyKingdoms" type="text"></td>
        </tr>
        <tr>
          <th>소속</th>
          <td><input name="applyBelongs" type="text"></td>
        </tr>
        <tr>
          <th>통솔</th>
          <td><input name="applyCommand" type="text"></td>
        </tr>
        <tr>
          <th>무력</th>
          <td><input name="applyPower" type="text"></td>
        </tr>
        <tr>
          <th>지력</th>
          <td><input name="applyBrain" type="text"></td>
        </tr>
        <tr>
          <th>정치</th>
          <td><input name="applyPolitic" type="text"></td>
        </tr>
    	</table>
      	<textarea onclick="this.value=''">장수의 열전을 입력해주세요.</textarea>
      	<input type="submit" value="신청">
      	<input type="button" value="뒤로" onClick="location.href='searchGeneral.do'">
    </div>
<jsp:include page="footer.jsp" />
</body>
</html>