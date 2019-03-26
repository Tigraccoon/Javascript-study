<%@ page import="himart.HimartDAO" %>
<%@ page import="himart.HimartDTO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>himart</title>
<style type="text/css">
body{background: #e7e7e7;}
div{
	margin: 0 auto;
	display: block;
	border: 1px solid black;
	font-size: 20px;
	left: 42%;
	width: 16%; 
	padding: 5px;
	text-align: right;
	background: white;
}
.left{
	display: inline-block;
	left: 0%;
	float: left;
}
</style>
</head>
<body>
<br><br><br><br><br>

<%
request.setCharacterEncoding("utf-8");

String location = request.getParameter("location");
String name = request.getParameter("name");
String code = request.getParameter("code");
int price = Integer.parseInt(request.getParameter("price"));
int amount = Integer.parseInt(request.getParameter("amount"));
String chk = request.getParameter("chk");
int val = 0;
int tax = 0;
int tot = price*amount;

if(chk==null){
	val=(int)(tot*0.1);
	tax=(int)((tot-val)*0.03);
	tot+=(tax+val);
	chk="면세품목";
} else{
	chk="과세품목";
}

HimartDTO dto = new HimartDTO(location, name, code, price, amount, val, tax, tot, chk);
HimartDAO dao = new HimartDAO();

dao.upload(dto);
%>
<script type="text/javascript">alert("서버 전송 완료");</script>

<div>
<h2>하이마트</h2><br> 

	<b class="left">지점 :</b> <%=location %><br><br>
	<b class="left">품명 :</b> <%=name %><br><br>
	<b class="left">제품코드 :</b> <%=code %><br><br>
	<b class="left">단가 :</b> <%=String.format("%,d",price) %><br><br>
	<b class="left">수량 :</b> <%=String.format("%,d",amount) %><br><br>
	<b class="left">부가세 물품가액 :</b> <%=String.format("%,d",val) %><br><br>
	<b class="left">부가세 :</b> <%=String.format("%,d",tax) %><br><hr><br>
	<b class="left">합계금액 :</b> <%=String.format("%,d",tot) %><br><br>
</div>

</body>
</html>