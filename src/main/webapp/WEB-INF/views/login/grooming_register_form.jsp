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
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function openDaumPost(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('adress-text').value = data.zonecode;
            document.getElementById("profile-addr1").value = data.roadAddress;
             
        }
    }).open();
}// openDaumPost() end


	$(document).ready(function(){
		var checkIP = /^[a-zA-Z0-9]{4,16}$/; //ID와 PASSWORD 유효성 검사 정규식
	    var checkEmail = /^[0-9a-zA-Z]([@-_\.]?[0-9a-zA-Z]){1,99}$/;  //Email 유효성 검사 정규
	    var checkBirth = /^[0-9]{6}$/;  //Email 유효성 검사 정규
	    var checkHangle = /^[\uAC00-\uD7A3]+$/; // 한글입력
		var checkPhone = /^[0-9]{10,11}$/; //ID와 PASSWORD 유효성 검사 정규식

		var mb_id = document.getElementById("mb_id");
	    var mb_pw = document.getElementById("mb_pw");
	    var mb_pwck = document.getElementById("mb_pwck");
	    var mb_name = document.getElementById("mb_name");
	    var mb_phone = document.getElementById("mb_phone");
	    var mb_email = document.getElementById("mb_email");
	    var mb_emailhidden = document.getElementById("verificationNum");
	    var mb_birth = document.getElementById("birth");
	    var mb_address1 = document.getElementById("mb_address1");
	    var mb_address2 = document.getElementById("mb_address2");
	    var mb_area = document.getElementById("mb_area");

	    $("#join").on('click', function(){


	    	//아이디 유효성 검사
	    	if(mb_id.value == ""){
	    		mb_id.focus();
	    		alert("사용할 아이디를 적어주세요");
		    	return false;
	    	}if(!checkIP.test(mb_id.value)) {
	    		alert("4~16자 영문 대 소문자, 숫자를 사용하세요.");
		    	mb_id.focus();
		        return false;
		    }


	     // 이름 유효성 검사
		    if(mb_name.value==""){
		    	alert("이름은 필수정보 입니다");
		    	mb_name.focus();
		        return false;
		    }if(!checkHangle.test(mb_name.value)){
		    	alert("이름은 한글로 적어주세요");
		    	mb_name.focus();
		        return false;
		    }




	    	//비밀번호 유효성 검사
		    if(mb_pw.value==''){
		    	alert("비밀번호를 입력해주세요");
		    	mb_pw.focus();
		          return false;
		    }if(!checkIP.test(mb_pw.value)){
		    	alert("4~16자 영문 대 소문자, 숫자를 사용하세요.");
		    	mb_pw.focus();
		         return false;
		    }if(mb_pwck.value==''){
		    	alert("비밀번호 확인은 필수 사항입니다.");
		    	mb_pwck.focus();
		          return false;
		    }if(mb_pw.value!=mb_pwck.value){
		    	alert("비밀번호가 일치하지 않습니다.");
		    	mb_pwck.focus();
		    	return false;
		    }

		 	// 연락처 유효성 검사
		    if(mb_phone.value==""){
		    	alert("연락처를 입력해주세요");
		    	return false;
		    }if(!checkPhone.test(mb_phone.value)){
		    	alert("형식에 맞게 연락처를 입력해주세요");
		    	return false;
		    }

		    // 생년월일 유효성 검사
			if(birth.value==''){
		    	alert("생년월일을 입력해주세요.");
			      return false;
			}if(!checkBirth.test(birth.value)){
		    	alert("형식에 맞에 생년월일을 입력해주세요.");
			      return false;
			}


			//EMAIL 유효성검사
		    if(mb_email.value==''){
		    	alert("이메일을 입력해주세요.");
		        return false;
		    }if(!checkEmail.test(mb_email.value)){
		    	alert("이메일형식에 맞게 입력해주세요.");
		         return false;
		    }if(mb_emailhidden.value=='인증 번호'){
		    	alert("메일 인증을 해주세요");
		         return false;
		    }

		 // 주소 유효성 검사
		    if(mb_address1.value==""){
		    	alert("주소를 입력해주세요.");
		    	$('#addCheck').text("주소를 입력해주세요");
		    	return false;
		    }

		    document.frm.action = "join"
			document.frm.method = "POST";
			document.frm.submit();
			alert("회원가입이 완료되었습니다. 메인페이지로 이동합니.");

	    });



	});

	// 아이디 중복 체크
    function checkId(){
    	var checkIP = /^[a-zA-Z0-9]{4,16}$/; //ID와 PASSWORD 유효성 검사 정규식
      var mb_id = document.getElementById("mb_id").value;
  	  location.href = "mb_id_check?mb_id="+mb_id;
  	  
  	  	console.log(checkIP);
  	  
	  	if(!checkIP.test("#mb_id")) {
			alert("사용할 수 없는 아이디입니다.");
	    	mb_id.focus();
	        return false;
	    }if(${idCheck == null}){
	    	alert("사용가능한 아이디입니다");
	        return false;
	    }if(${idCheck != null}){
	    	alert("중복된 아이디입니다");
	        return false;
	    }
	}


	 // 메일 인증
      var windowObj;
      function openEmail(){

        // 새창에 대한 세팅(옵션)
        var settings ='toolbar=0,directories=0,status=no,menubar=0,scrollbars=auto,resizable=no,height=600,width=600,left=0,top=0';
        // 자식창을 열고 자식창의 window 객체를 windowObj 변수에 저장
        var mb_email = document.getElementById("mb_email").value;

        windowObj = window.open("email?mb_email=" + mb_email,"메일 인증",settings);

        // 자식창의 childText라는 id를 가진 태그 요소의 값에 부모창의 값을 넣음

      }

</script>


</head>
<body >
<div id="register">
		<aside>
			<figure>
				<a href="grooming_main.jsp"><img src="img/Grooming_150_36_LOGO.png" width="155" height="36" data-retina="true" alt="" class="logo_sticky"></a>
			</figure>
			<form autocomplete="off" action="#" name="frm">
				<!-- 아이디 -->
				<div class="form-group" style="margin-bottom: 20px;">
					<label>아이디</label>
					 <div>
					  <input class="form-control" type="text" id="mb_id" value="${testId }"name="mb_id" >
					  <input class="form-control btn_1" type="button" id="grooming_idcheck_Button" value="중복확인"
					  onclick="checkId();">
					</div>
					  <span id="idCheck"></span>
				</div>
				<!-- 이름 -->
				<div class="form-group" style="margin-bottom: 20px;">
					<label>이름</label>
					<input class="form-control" type="text" name="mb_name" id="mb_name">


				</div>

				<div class="form-group" style="margin-bottom: 20px;">
					<label>패스워드</label>
					<input class="form-control" type="password" name="mb_pw" id="mb_pw">
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>패스워드 확인</label>
					<input class="form-control" type="password" name="mb_pwck" id="mb_pwck">
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>핸드폰 번호</label>
					<input class="form-control" type="tel" id="mb_phone" placeholder="ex) 010XXXXXXXX" name="mb_phone">

				</div>
				<div class="form-group">
						<label>성별</label>
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>남</label>
					<input type="radio" name=mb_gender id="" value="M" checked="checked" />

					<label style="margin-left: 93px;" >여</label>
					<input type="radio" name="mb_gender" id="" value="W" />

				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>생년월일</label>
					<input class="form-control" type="text" id="birth" placeholder="ex) YYMMDD" name="mb_birth">
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>이메일</label>
					<div>
					  <input class="form-control" type="email" id="mb_email" placeholder="ex) xxxx@naver.com" name="mb_email">
					  <input class="form-control btn_1" type="button" name="name"  id="grooming_login_mail_Button" value="메일인증"
					  onclick="openEmail();">
					</div>

					<input class="form-control" type="text" id="verificationNum" value="인증 번호" disabled="disabled" />
				</div>

				<div class="form-group" >
						<label>이메일 수신여부</label>
				</div>
				<div class="form-group" style="margin-bottom: 20px;">
					<label>수신동의</label>
					<input type="radio" name="mb_emailck" id="" value="Y" checked="checked"/>
					<label style="margin-left: 50px;">수신거부</label>
					<input type="radio" name="mb_emailck" id="" value="N" />

				</div>
				<div class="form-group">
					<label>주소검색</label>

					<div>
					  <input class="form-control" type="email" id="mb_address1"  name="mb_address1">
					  <input class="form-control btn_1" type="button" name="name"  id="grooming_login_mail_Button" value="주소검색">
					</div>

				</div>
				<div class="form-group" style="margin-bottom: 20px;">

					<input class="form-control" type="text" id="mb_address2"  style="margin-bottom:10px; margin-top: -10px;"
					placeholder="ex) 상세주소 XX아파트 XX동-xx호" name="mb_address2"
					>


				</div>
				<div class="form-group" style="margin-bottom: 10px;">
					<label>선호하는 지역</label>
					<input class="form-control" type="password" id="" placeholder="ex) 서울,경기,수원" name="mb_area">

				</div>




				<input type="button" value="가입하기" id="join" class="btn_1 rounded outline full-width "  style="height: 50px; margin-top: 30px;"/>
				<a href="javascript:history.back(-1)" class="btn_1 rounded outline full-width">뒤로가기</a>
				  style="height: 50px; margin-top: 10px; onclick="history.back(-1)""/>

				<div class="copy">© 2020 Grooming</div>
			</form>

		</aside>

	</div>
	<!-- /login -->
</body>
</html>