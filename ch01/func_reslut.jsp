<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>func_reslut</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");

if(name==null || name.equals("")){
%>

<script type="text/javascript">
alert("이름을 입력해!");
location.href="func.html";
</script>

<% 	
}
%>

<%
String position = request.getParameter("position");

if(position==null || position.equals("")){
%>

<script type="text/javascript">
alert("직급을 입력해!");
location.href="func.html";
</script>

<% 	
}
%>

<%
String dept = request.getParameter("dept");
if(dept==null || dept==""){
%>
<script type="text/javascript">
alert("부서를 입력해!");
location.href="func.html";
</script>	
<%
}
%>

<%
StringBuilder str = new StringBuilder();
str.append(name + " " + position + " 방문을 환영해!"+"\r\n<br>");
str.append("너의 부서는 "+dept+" 이다.");
out.println(str); 	//웹 브라우져 출력
System.out.println(str);

%>

</body>
</html>