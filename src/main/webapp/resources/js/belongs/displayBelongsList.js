function showBelongsList() {
	// 리디렉션 조건을 명확히 정의하여 무한 호출을 방지
	if (!window.location.href.includes("showBelongsList.do")) {
	    window.location.href = "showBelongsList.do";
	}
}

showBelongsList();