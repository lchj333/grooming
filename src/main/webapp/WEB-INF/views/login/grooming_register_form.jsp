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
    <title>grooming_register_form</title>

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

</head>
<body style="background-color: white;">
<div id="login">
		<aside>
			<figure>
				<a href="grooming_main.jsp"><img src="img/Grooming_150_36_LOGO.png" width="155" height="36" data-retina="true" alt="" class="logo_sticky"></a>
			</figure>
			<form autocomplete="off">
				<div class="form-group" style="margin-bottom: 20px;">
					<label>이름</label>
					<input class="form-control" type="text" placeholder="name">
				</div>

				<div class="form-group" style="margin-bottom: 20px;">
					<label>패스워드</label>
					<input class="form-control" type="password" >

				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>패스워드 확인</label>
					<input class="form-control" type="password">

				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>핸드폰 번호</label>
					<input class="form-control" type="tel" id="hp" placeholder="ex) 010XXXXXXXX">

				</div>
				<div class="form-group">
						<label>성별</label>
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>남</label>
					<input type="radio" name="ck" id="" value="남" checked="checked"/>
					<label style="margin-left: 93px;" >여</label>
					<input type="radio" name="ck" id="" value="여" />

				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>생년월일</label>
					<input class="form-control" type="text" id="birth" placeholder="ex) YYMMDD">

				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>이메일</label>
					<div>
					  <input class="form-control" type="email" id="grooming_login_mail_Text" placeholder="ex) xxxx@naver.com">
					  <input class="form-control" type="button" name="name"  id="grooming_login_mail_Button" value="메일인증">
					</div>
				</div>

				<div class="form-group" >
						<label>이메일 수신여부</label>
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>수신동의</label>
					<input type="radio" name="ck2" id="" value="동의" checked="checked"/>
					<label style="margin-left: 50px;">수신거부</label>
					<input type="radio" name="ck2" id="" value="거부" />

				</div>
				<div class="form-group">
					<label>주소검색 <a href=""></a></label>
					<input class="form-control" type="password" id="" disabled="disabled">

				</div>
				<div class="form-group" style="margin-bottom: 20px;">

					<input class="form-control" type="text" id=""  style="margin-bottom:10px; margin-top: -10px;"
					placeholder="ex) 상세주소 XX아파트 XX동-xx호"
					>

					<input type="button" value="주소검색" style="margin-top: 20px;"class="btn_1 rounded full-width add_top_30" />
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>선호하는 지역</label>
					<input class="form-control" type="password" id="" placeholder="ex) 서울,경기,수원">

				</div>



				<div id="pass-info" class="clearfix"></div>
				<a href="#0" class="btn_1 rounded full-width add_top_30" style="margin-bottom: 20px;">가입하기</a>
			</form>
			<div class="copy">© 2020 Grooming</div>
		</aside>
	</div>
	<!-- /login -->
</body>
</html>