<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>저는 팝업창입니다.</title>
<script>
	function winclose() {
		// opener : 팝업창을 오픈한 메인창
		// 메인창의 dan 값을 팝업창의 dan 값으로 변경시킴
		// 이창도 또 다른 팝업창을 만들수 있는데 또 다른 팝업창이 
		//popup2.html로 가려면 opener.opener로 쓰면 된다. 
		opener.document.getElementById("dan").value 
		= document.form1.dan.value;
		window.close();
	}
</script>
</head>
<body>
	<%
		//http://localhost:8088/web02/ch03/gugu.jsp?dan=7		
		int dan = Integer.parseInt(request.getParameter("dan"));
	%>
	<h2><%=dan%>단</h2>
	<%
		for (int i = 1; i <= 9; i++) {
			out.println(dan + "x" + i + "=" + dan * i + "<br>");
		}
	%>
	<!-- window.close() 창닫기 -->
	<form name="form1">
		메인창에 전달할 값을 입력하세요 <input type="text" name="dan">
		 <input	type="button" value="닫기" onclick="winclose()">
	</form>
</body>
</html>

