<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu</title>
<script type="text/javascript">
function winclose(){
	//opener : 팝업창을 오픈한 메인창(부모창) 메인 창의 dan값을 팝업창의 dan값으로 변경
	opener.document.getElementById("dan").value = document.form1.dan.value;
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
	out.println(dan + " * " + i + " = " + dan*i + "<br>");
}
%>

<form name="form1">
<h5>메인 창에 전달할 값을 입력하세요!</h5>
<input type="text" name="dan">
<input type="button" value="닫기" onclick="winclose()">

</form>

</body>
</html>