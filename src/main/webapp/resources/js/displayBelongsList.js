function displayBelongsList() {
	// 리디렉션 조건을 명확히 정의하여 무한 호출을 방지
	if (!window.location.href.includes("displayBelongsList.do")) {
	    window.location.href = "displayBelongsList.do";
	}
}

displayBelongsList();