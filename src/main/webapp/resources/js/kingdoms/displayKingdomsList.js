function showKingdomsList() {
	// 리디렉션 조건을 명확히 정의하여 무한 호출을 방지
	if (!window.location.href.includes("showKingdomsList.do")) {
	    window.location.href = "showKingdomsList.do";
	}
}

showKingdomsList();