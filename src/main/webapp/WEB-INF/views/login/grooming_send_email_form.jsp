
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
body {

}

* {
	margin: 0;
	padding: 0;
	font-family: "나눔스퀘어";
	font-size: 16px;
}

#inner {
	/* margin-top: 200px; */

	width: 600px;
	height: 600px;
	border: 1px solid #cbcbca;



}

h1 {
	text-align: center;
	margin-top: 70px;
	size: 30px;
	font-size: 30px;
	font-weight: 900;
	letter-spacing: -2px;
}

#title {
	width: 600px;
	height: 60px;
}

h5 {
	margin-top: 10px;
	text-align: center;
	margin-bottom: 20px;
}



#realNum {
	text-align: center;
	margin-left: 85px;
	margin-top: 20px;
	width: 420px;
	height: 50px;
	border: 1px solid #cbcbca;
	margin-left: 85px;
}








#namefd {
	margin-top: 20px;
}



h6 {
	margin-top: 5px;
	margin-left: 85px;
	color: red;
	font-size: 14px;
}

.btn {
	background-color: black;
	width: 435px;
	height: 60px;
	margin-left: 85px;
	margin-top: 0px;
	color: white;
	border-style: none;
	border: 3px solid;
	font-size: 16px;

	font-family: "나눔스퀘어";
	font-weight: bold;

	text-align: center;

}

.btn:hover{
	background-color: #fbbc42;
	color: black;
	border: 3px solid #fbbc42;
}

.copy {
	margin-top: 250px;
	text-align: center;
	font-size: 8px;
	font-size: 1rem;
	opacity: 0.7;

}



</style>
<meta charset="UTF-8">
<title>메일인증</title>

<script type="text/javascript">
function sendEmail(){
    var txt = document.getElementById("realNum").value;
	if(txt == ${dice}){
    opener.document.getElementById("verificationNum").value = txt;

   		document.authenform.action = "grooming_send_email_form${dice}"
		document.authenform.method = "POST";
		document.authenform.submit();

	}else {
   		document.authenform.action = "grooming_send_email_form${dice}"
		document.authenform.method = "POST";
		document.authenform.submit();

	}
  }

</script>

</head>

<body>

	<div id="inner">
		<div id="title">
			<h1>이메일 인증하기</h1>
			<h5>이메일 인증을 통해 비밀번호 찾기 및 아이디 찾기를 하실 수 있습니다</h5>
		</div>

		<form name="authenform">


			<div id="namefd">
				<input type="text" title="인증번호를 입력하세요." placeholder="인증번호를 입력하세요"
					name="email_injeung" id="realNum" style="padding-left: 10px;">

			</div>

			<div>
				<input type="button" value="인증번호 확인" class="btn" onclick="sendEmail();"/>
			</div>
		</form>
		<div class="copy">© 2020 Grooming</div>
	</div>
	<!--inner end-->

</body>
</html>