<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="keyword.KeywordDAO" %>
<!-- java.util.에 있는 List와 ArrayList를 사용하기 위해 일일히 임포트하지 않고 한 방에 -->
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result3</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

KeywordDAO dao = new KeywordDAO();
String search = request.getParameter("search");

List<String> items = dao.list(search);

for (String str : items){
	out.println(str + "<br>");
}

%>

</body>
</html>