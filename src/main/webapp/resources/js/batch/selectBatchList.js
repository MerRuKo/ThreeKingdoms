function confirmBatchExcute() {
	
	let result = confirm("출력하시겠습니까? 생성경로는 이하입니다.\n/ThreeKingdoms/src/main/webapp/logs/generalInfoList.txt")
	
	if (result == true) {
	    window.location.href = "excuteBatchGeneral.do";
	    alert("출력 완료");
	} else {
		return;
	}
	
}