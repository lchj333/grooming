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
    <title>Grooming 로그인</title>
<!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

 <!-- =======================================================================================================================================================================================================================  -->
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>




</script>
<body >
<div id="login">

		<aside>
			<!-- 상단 로고 -->
			<figure>
				<a href="grooming_main.jsp"><img
					src="img/Grooming_150_36_LOGO.png" width="155" height="36"
					data-retina="true" alt="" class="logo_sticky"></a>
			</figure>
			<!-- 상단 로고 -->

			<form>
				<!-- sns 로고 -->
			<!-- 	<div class="access_social">
					<a href="#0" class="social_bt kakao">Login with kakao</a>
				</div> -->
				<!-- sns 로고 -->

				<!-- <div class="divider"><span>Or</span></div> -->
				<!-- 아이디 입력 -->
				<div class="form-group">
					<label>아이디</label>

					<i class="ti-user"></i>
					<input type="text" class="form-control" name="id" id="id" style="padding-left: 40px;">
				</div>
				<!-- 비밀번호 입력 -->
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="password" id="password"
					style="padding-left: 40px;"
					 >
					<i class="icon_lock_alt"></i>
				</div>
				<!-- 아이디 저장 체크 박스 -->
				<div class="clearfix add_bottom_30">
					<!-- <div class="checkboxes float-left">
						<label class="container_check">아이디 저장 <input
							type="checkbox"> <span class="checkmark"></span>
						</label>
					</div> -->

					<div class="float-right mt-1"><label>&nbsp; 비밀번호 찾기</label></div>
					<div class="float-right mt-1" ><label>아이디 찾기 ㅣ&nbsp;</label></div>
				</div>
				<input type="button" value="로그인" class="btn_1 rounded full-width"/>
				<input type="button" value="회원가입" class="btn_1 rounded full-width" id=""/>

			</form>
			<div class="copy">© 2020 Grooming</div>

		</aside>

	</div>

</body>

</html>