<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>장수 상세</title>
<link rel="stylesheet" type="text/css" href="css/searchGeneralDetail.css">
</head>
<body>
<jsp:include page="header.jsp" />
    <div class="searchGeneralDetail">
	<img src="images/portrait/${searchGeneralDetail.generalno }.png" alt="portrait" />
		<table>
        <tr>
          <th>번호</th>
          <td>${searchGeneralDetail. generalno }</td>
        </tr>
        <tr>
          <th>성명</th>
          <td>${searchGeneralDetail. name }</td>
        </tr>
        <tr>
          <th>자</th>
          <td>${searchGeneralDetail. nickname }</td>
        </tr>
        <tr>
          <th>국가</th>
          <td>${searchGeneralDetail. kingdoms }</td>
        </tr>
        <tr>
          <th>소속</th>
          <td>${searchGeneralDetail. belongs }</td>
        </tr>
        <tr>
          <th>통솔</th>
          <td>${searchGeneralDetail. command }</td>
        </tr>
        <tr>
          <th>무력</th>
          <td>${searchGeneralDetail. power }</td>
        </tr>
        <tr>
          <th>지력</th>
          <td>${searchGeneralDetail. brain }</td>
        </tr>
        <tr>
          <th>정치</th>
          <td>${searchGeneralDetail. politic }</td>
        </tr>
    	</table>
      	<textarea readonly>${searchGeneralDetail. story }</textarea>
      	<input type="button" value="뒤로" onClick="location.href='searchGeneralList.do'">
    </div>
<jsp:include page="footer.jsp" />
</body>
</html>