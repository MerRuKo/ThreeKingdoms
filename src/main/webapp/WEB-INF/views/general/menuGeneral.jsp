<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>장수관리</title>
<link rel="stylesheet" type="text/css" href="css/menuGeneral.css">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="mainGeneralMenu">
	<p>※ 장수검색 : 현재 등록되어 있는 장수를 검색합니다.</p>
	<input type="button" value="장수검색" onClick="location.href='searchGeneralList'">
	<p>※ 신규등록 : 새로운 장수정보의 등록을 신청합니다.</p>
	<input type="button" value="신규등록" onClick="location.href='registerGeneral'">
	<p>※ 승인대기 : 등록신청 된 새로운 장수를 승인합니다.</p>
	<input type="button" value="승인대기" onClick="location.href='approveGeneralList.do'">
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>