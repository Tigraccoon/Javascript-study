<%@ page import="event.EventDAO" %>
<%@ page import="event.EventDTO" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 파일 업로드</title>
<style type="text/css">

body{text-align: center; margin: auto; font-size: 30px;}

</style>
</head>
<body>
<script type="text/javascript">
	alert("이벤트에 성공적으로 응모되었습니다!");
</script>
<br><br><br>
<h1 style="font-size: 300%">이벤트 응모 완료!</h1>
<br><br><br>
<%
	request.setCharacterEncoding("utf-8");

	String directory = application.getRealPath("/project3/event/");
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";
	
	MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding, 
			new DefaultFileRenamePolicy());

	String fileName = multipartRequest.getOriginalFileName("file");
	String fileRealName = multipartRequest.getFilesystemName("file");
	String name = multipartRequest.getParameter("name");
	String email = multipartRequest.getParameter("email");
	String phoneNum = multipartRequest.getParameter("phoneNum");

	
	EventDTO dto = new EventDTO(fileName, fileRealName, name, email, phoneNum);
	EventDAO dao = new EventDAO();
	
	dao.upload(dto);
	out.write("파일명 : " + fileName + "<br><br>");
	out.write("이름 : " + name + "<br><br>");
	out.write("전화번호 : " + phoneNum + "<br><br>");
	out.write("이메일 : " + email + "<br><br>");
	
%>

<h1>감사합니다!</h1>
</body>
</html>