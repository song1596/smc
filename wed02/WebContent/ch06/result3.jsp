<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="keyword.KeywordDAO" %>  
<%@ page import="java.util.*" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  //한글 인코딩 설정
  request.setCharacterEncoding("utf-8");
  KeywordDAO dao = new KeywordDAO(); //dao객체 생성
  String search = request.getParameter("search"); //키워드처리
  List<String> items = dao.list(search);
  //화면에 출력
  for (String str : items){
	  out.println(str + "<br>");
  }
%>
</body>
</html>