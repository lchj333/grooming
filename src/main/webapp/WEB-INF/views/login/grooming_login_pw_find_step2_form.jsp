<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Grooming 비밀번호 변경</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

		var checkIP = /^[a-zA-Z0-9]{4,16}$/; //ID와 PASSWORD 유효성 검사 정규식

		 var mb_id = document.getElementById("mb_id");
		 var mb_pw = document.getElementById("mb_pw");
		 var mb_pwck = document.getElementById("mb_pwck");
		 $("#changePw").on('click', function(){


		//비밀번호 유효성 검사
	    if(mb_pw.value==''){
	    	$('#pwCheck').text("비밀번호를 입력해주세요.");
	    	alert("비번을 입력 ㄱ");
	    	mb_pw.focus();
	          return false;
	    }if(!checkIP.test(mb_pw.value)){
	    	alert("4~16자 영문 대 소문자, 숫자를 사용하세요.");
	    	$('#pwCheck').text("4~16자 영문 대 소문자, 숫자를 사용하세요.");
	    	mb_pw.focus();
	         return false;
	    }if(mb_pwck.value==''){
	    	alert("필수정보 입니다.");
	    	$('#pwCheck2').text("필수정보 입니다.");
	    	mb_pwck.focus();
	          return false;
	    }if(mb_pw.value!=mb_pwck.value){
	    	alert("비밀번호가 일치하지 않습니다.");
	    	$('#pwCheck2').text("비밀번호가 일치하지 않습니다.");
	    	mb_pwck.focus();
	    	return false;
	    }

	    document.frm.action = "changePw"
		document.frm.method = "POST";
	    document.frm.mb_id.val = mb_id;
	    document.frm.mb_pw.val = mb_pw;
		document.frm.submit();

		 });

	});
</script>
<body >

<div id="login">

		<aside>
			<figure>
				<a href="/main"><img
					src="<c:url value='/resources/main_resources/img/Grooming_150_36_LOGO.png'/>"
					data-retina="true" alt="" width="150" height="36"></a>
			</figure>
				<div class="access_social" style="text-align: center;">
					<h4 style="font-weight: 600;">비밀번호 변경</h4>
					<h6>고객님의 비밀번호를 변경합니다.</h6>
				</div>
				<div class="divider"></div>
				<form action="#" name="frm">
					<div class="form-group"
						style=" height: 20%; padding: 2%; color: black;">
						<div class="form-group" style="margin-bottom: 20px;">
							<label>아이디</label>
							<div>
								<input class="form-control" type="text" id="mb_id" value="${pwFind.mb_id }" name="mb_id">

							</div>
						</div>

						<div class="form-group" style="margin-bottom: 20px;">
							<label>패스워드 변경</label> <input class="form-control" type="password" name="mb_pw" id="mb_pw"/>

						</div>
						<div class="form-group" style="margin-bottom: 20px;">
							<label>패스워드 확인</label> <input class="form-control" type="password" name="mb_pwck" id="mb_pwck"/>

						</div>

					</div>


				<div class="form-group add_top_15">
					<div class="clearfix" style="text-align: center;">
						<input type="button" value="비밀번호 변경" class="btn_1" id="changePw"/>
						<input type="button" value="뒤로가기" class="btn_1 add_left_15" />
					</div>
				</div>
			</form>
			<div class="copy">© 2020 Grooming</div>
		</aside>


	</div>
</body>
</html>