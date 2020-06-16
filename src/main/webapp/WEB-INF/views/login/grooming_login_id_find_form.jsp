<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Grooming 아이디 찾기</title>

  <!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

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

	  var mb_name = document.getElementById("mb_name");
	  var mb_email = document.getElementById("grooming_login_mail_Text");
	  var mb_emailcheck = document.getElementById("verificationNum");

	  $("#findId").on('click', function(){
		  if(mb_name.value == ""){
			  $('#nameCheck').text("이름을 입력해주세요");
			  alert("이름이 없습니다");
			  return false;
		  }if(mb_email.value == ""){
			  $('#emailCheck').text("이메일을 입력해주세요");
			  alert("메일을 적어주세요");
			  return false;
		  }if(mb_emailcheck.value == "인증번호를 입력하세요"){
			  $('#emailCheck').text("메일인증을 해주세요");
			  alert("메일 인증해주세요");
			  return false;

		  }

		document.frm.action = "mb_id_findOk";
		document.frm.method = "POST";
		document.frm.mb_name.val = mb_name;
		document.frm.mb_email.val = mb_email;
		document.frm.submit();

	  });

	});

	var windowObj;
	function openEmail(){

	  // 새창에 대한 세팅(옵션)
	  var settings ='toolbar=0,directories=0,status=no,menubar=0,scrollbars=auto,resizable=no,height=600,width=600,left=0,top=0';
	  // 자식창을 열고 자식창의 window 객체를 windowObj 변수에 저장
	  var mb_email = document.getElementById("grooming_login_mail_Text").value;
	  if(mb_email == ""){

		  alert("메일을 적어주세요.");
	  }else{

	 	 windowObj = window.open("emailId?mb_email=" + mb_email,"메일 인증",settings);
	  }

	  // 자식창의 childText라는 id를 가진 태그 요소의 값에 부모창의 값을 넣음

	}

</script>


<body >

<div id="login">

		<aside>
			<figure>
				<a href="/"><img
					src="<c:url value='/resources/main_resources/img/Grooming_150_36_LOGO.png'/>"
					data-retina="true" alt="" width="150" height="36"></a>
			</figure>
			   <form name="frm">
				<div class="access_social" style="text-align: center;">
					<h4 style="font-weight: 600;">아이디 찾기</h4>
					<h6>정확한 이름과 이메일을 입력하세요</h6>
				</div>
				<div class="divider"></div>
				<div class="form-group">
					<label>이름</label>

					<input type="text" class="form-control" name="mb_name" id="mb_name" value="${name}"/>
				</div>
				<div class="form-group">
					<label>이메일</label>

					<div class="add_bottom_15">
					  <input class="form-control" type="email" id="grooming_login_mail_Text" placeholder="ex) xxxx@naver.com" name="mb_email" value="${email }">
					</div>
					<input type="text" class="form-control add_bottom_15" name="text" id="verificationNum" disabled="disabled" value="인증번호를 입력하세요" >
					  <input class="form-control btn_1" type="submit" name="name"   value="메일인증" onclick="openEmail();">
					<h6 class="text-center">인증번호가 오지 않나요?</h6>
				</div>

				<div class="clearfix add_bottom_30">



				</div>
				<input type="button" value="아이디 찾기" class="btn_1 rounded full-width"  id="findId"/>
				<a href="javascript:history.back(-1)" class="btn_1 rounded full-width" style="height: 50px; margin-top: 10px; onclick="history.back(-1)>뒤로가기</a>
			</form>
			<div class="copy">© 2020 Grooming</div>
		</aside>

	</div>
</body>
</html>