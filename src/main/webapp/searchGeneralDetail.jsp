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
	<img class="searchGeneralDetailPortrait" src="images/portrait/${generalDetail.generalno }.png" alt="portrait" />
		<table>
        <tr>
          <th>성명</th>
          <td>${generalDetail. name }</td>
        </tr>
        <tr>
          <th>자</th>
          <td>${generalDetail. nickname }</td>
        </tr>
        <tr>
          <th>국가</th>
          <td>${generalDetail. kingdoms }</td>
        </tr>
        <tr>
          <th>소속</th>
          <td>${generalDetail. belongs }</td>
        </tr>
        <tr>
          <th>통솔</th>
          <td>${generalDetail. command }</td>
        </tr>
        <tr>
          <th>무력</th>
          <td>${generalDetail. power }</td>
        </tr>
        <tr>
          <th>지력</th>
          <td>${generalDetail. brain }</td>
        </tr>
        <tr>
          <th>정치</th>
          <td>${generalDetail. politic }</td>
        </tr>
    	</table>
      <textarea readonly>${generalDetail. story }</textarea>
    </div>
<jsp:include page="footer.jsp" />
</body>
</html>