<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>장수 상세</title>
<link rel="stylesheet" type="text/css" href="css/applyGeneralDetail.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="applyGeneralDetail">
    <form action="applyGeneralInsert.do" method="post">
		<table>
		<tr>
          <th>신청번호</th>
          <td><input name="applyno" type="text" value="${applyGeneralDetail. applyno }" readonly></td>
        </tr>
		<tr>
          <th>성명</th>
          <td><input name="name" type="text" value="${applyGeneralDetail. name }" readonly></td>
        </tr>
        <tr>
          <th>자</th>
          <td><input name="nickname" type="text" value="${applyGeneralDetail. nickname }" readonly></td>
        </tr>
        <tr>
          <th>통솔</th>
          <td><input name="command" type="text" value="${applyGeneralDetail. command }" readonly></td>
        </tr>
        <tr>
          <th>무력</th>
          <td><input name="power" type="text" value="${applyGeneralDetail. power }" readonly></td>
        </tr>
        <tr>
          <th>지력</th>
          <td><input name="brain" type="text" value="${applyGeneralDetail. brain }" readonly></td>
        </tr>
        <tr>
          <th>정치</th>
          <td><input name="politic" type="text" value="${applyGeneralDetail. politic }" readonly></td>
		</tr>
    	</table>
      	<textarea name="story" readonly>${applyGeneralDetail. story }</textarea>
      	<input type="submit" value="승인">
      	<input type="button" value="반려" onClick="location.href='applyGeneralDelete.do?applyno=${applyGeneralDetail. applyno }'">
      	<br><input type="button" value="뒤로" onClick="location.href='applyGeneralList.do'">
	</form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>