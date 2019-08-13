<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//get 방식으로 전달된 한글 인코딩 설정 : 생략가능
//post 방식으로 전달된 한글 인코딩 설정 :
//request.setCharacterEncoding("utf-8");
//표준 인코딩 : iso-8859-1 서유럽언어
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
/* jsp에서도 이중으로 사용자 검증처리를 하면 더 안전하다. */
if (name == null || name.equals("")) {
%>
<script type="text/javascript">
alert("이름을 입력하세요.");
response.sendRedirect("funct3.html");/* 지정한 페이지로 이동 */
</script>
<%
}
String position = request.getParameter("position");
String str = name + " " + position + "님의 방문을 환영합니다.";
out.println(str);//웹브라우저에 출력
System.out.println(str);//톰캣 콘솔에 출력
%>	
</body>
</html>