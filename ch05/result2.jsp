<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result2</title>
</head>
<body>

<%

String userid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String[] result = new String[2];
MemberDAO dao = new MemberDAO();
result = dao.login(userid, pwd);
if (result != null){
	out.println(result[0] + " 환영한다!");%><br><%
	out.println("너의 이메일은? : " + result[1]);
}else{
	out.println("로그인 실패.. 아이디 또는 비번을 확인!");
}

%>

</body>
</html>