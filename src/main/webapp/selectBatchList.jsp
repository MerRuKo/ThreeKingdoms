<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>배치실행</title>
<link rel="stylesheet" type="text/css" href="css/selectBatchList.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="selectBatchList">
	<input type="button" value="장수목록출력" onClick="location.href='excuteBatchGeneral.do'"><br><br>
	<input type="button" value="회원목록출력" onClick="#">
</div>
<jsp:include page="footer.jsp" />
</body>
</html>