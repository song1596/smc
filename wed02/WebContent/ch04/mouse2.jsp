<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/common.jsp"%>
<!-- 아래와 똑같은 효과임, 메뉴처리,jquery등의 공용사용 common.jsp과 같은 파일을 만들어 사용하면  유지보수시 환경변화에 효율적으로 대응할 수 있다.
<script src="../include/jquery-3.3.1.min.js"></script> -->
<script>
	//페이지가 로딩되면 자동 실행되는 코드
	$(function() {
		var i = 0;
		// div 태그 중에서 class가 out인 태그 에대해 mouseover 이벤트
		$("div.out").mouseover(function() {
			//1. 선택자.text() 내용을 읽는다는 뜻 ex)
			//alert($("p:first").text());
			//2. 선택자.text("값") 내용을 바꾼다는 뜻
			//첫번째 p 태그의 내부 텍스트 변경
			$("p:first").text("mouse over");
			//마지막 p 태그의 내부 텍스트 변경
			$("p:last").text(++i);//아래p태그에 0값 부터 계속 1씩 증가됨
		});
		//mouseout 이벤트
		$("div.out").mouseout(function() {
			$("p:first").text("마우스를 여기로 움직이세요.");
		});
	});
</script>
</head>
<body>
	<div class="out">
		<p>마우스를 여기로 움직이세요.</p>
		<p>0</p>
	</div>
	<div>두번째 div</div>
</body>
</html>
			