<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>승인상세</title>
<link rel="stylesheet" type="text/css" href="css/general/approveGeneralDetail.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="approveGeneralDetail">
    <form action="approveGeneralInsert.do" method="post">
		<table>
		<tr>
          <th>신청번호</th>
          <td><input name="applyno" type="text" value="${approveGeneralDetail. applyno }" readonly></td>
        </tr>
		<tr>
          <th>성명</th>
          <td><input name="name" type="text" value="${approveGeneralDetail. name }" readonly></td>
        </tr>
        <tr>
          <th>자</th>
          <td><input name="nickname" type="text" value="${approveGeneralDetail. nickname }" readonly></td>
        </tr>
        <tr>
          <th>통솔</th>
          <td><input name="command" type="text" value="${approveGeneralDetail. command }" readonly></td>
        </tr>
        <tr>
          <th>무력</th>
          <td><input name="power" type="text" value="${approveGeneralDetail. power }" readonly></td>
        </tr>
        <tr>
          <th>지력</th>
          <td><input name="brain" type="text" value="${approveGeneralDetail. brain }" readonly></td>
        </tr>
        <tr>
          <th>정치</th>
          <td><input name="politic" type="text" value="${approveGeneralDetail. politic }" readonly></td>
		</tr>
    	</table>
      	<textarea name="story" readonly>${approveGeneralDetail. story }</textarea>
      	<input type="submit" value="승인">
      	<input type="button" value="반려" onClick="location.href='approveGeneralDelete.do?applyno=${approveGeneralDetail. applyno }'">
      	<br><input type="button" value="뒤로" onClick="location.href='approveGeneralList.do'">
	</form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>