<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function winclose() {
	//opener : 팝업창을 오프한 메인창(부모창)
	//메인창의 dan 값을 팝업창의 dan 값으로 변경시킴
	opener.document.getElementById("dan").value 
	= document.form1.dan.value;
	window.close();
}
</script>
</head>
<body>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2><%=dan%>단</h2>
<%
for (int i=1; i<=9; i++) {
	out.println(dan + "x" + i + "=" + dan*i + "<br>");
}
%>
<form name="form1">
메인창에 전달할 값을 입력하세요
<input type="text" name="dan">
<input type="button" value="닫기" onclick="winclose()">
</form>



</body>
</html>