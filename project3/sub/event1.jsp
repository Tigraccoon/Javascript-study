<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커스텀 피자 : 인증샷 이벤트</title>
<style type="text/css">
body{margin: auto; display: block; text-align: center;}
#button{width: 500px; height: 80px; background: #E63C18; color: #EBEBEB; font-weight: bold; font-size: xx-large;}
#button:hover {
	background: #EBEBEB; color: #E63C18;
}
div{ text-align: left; display: block; margin-left: 40%;}
</style>

<script type="text/javascript">
function check(){
	var name = document.getElementById("name").value;
	var phoneNum = document.getElementById("phoneNum").value;
	var email = document.getElementById("email").value;
	var file = document.getElementById("file").value;
	
	if(name==""){	
		alert("이름을 입력해주세요!");
		document.getElementById("name").focus();	
		return;		
	}
	if(phoneNum==""){
		alert("전화번호를 입력해주세요!");
		document.getElementById("phoneNum").focus();
		return;
	}
	if(email==""){
		alert("이메일을 입력해주세요!");
		document.getElementById("email").focus();
		return;
	}
	if(file==""){
		alert("파일을 등록해주세요!");
		document.getElementById("file").focus();
		return;
	}
	
	if (confirm("이벤트에 참여하시겠습니까?") == true){
		alert("이벤트에 등록합니다.");
		document.getElementById("form").submit();
	} else{
		alert("취소하셨습니다.");
	}
	
}


</script>
</head>
<body>
<br><br><br><br><br>
<img src="../images/event1.jpg">
<br><br><br><br><br>
<div>
<form action="uploadAction.jsp" method="post" enctype="multipart/form-data" id="form">
	이름 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" size="30" name="name" id="name" value="홍길동"><br><br>
	전화번호 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" size="30" name="phoneNum" id="phoneNum" value="010-0000-0000"><br><br>
	이메일주소 :&nbsp;&nbsp;
	<input type="text" size="30" name="email" id="email" value="hong@naver.com"><br><br>
	파일 :&nbsp;&nbsp;
	<input type="file" size="10" name="file" id="file"><br><br>
	*파일명은 핸드폰 번호 ex)010-1234-5678.jpg<br>
	쿠폰은 이메일과 문자를 통해 전송됩니다.<br><br><br>
	<input type="button" size="10" value="이벤트 참여하기" id="button" onclick="check()"><br>
</form>
</div>

</body>
</html>