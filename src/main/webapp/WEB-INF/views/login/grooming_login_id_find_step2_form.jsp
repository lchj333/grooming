<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Grooming 아이디 확인</title>

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

<body >

<div id="login">

		<aside>
			<figure>
				<a href="grooming_main.jsp"><img
					src="<c:url value='/resources/main_resources/img/Grooming_150_36_LOGO.png'/>"
					data-retina="true" alt="" width="150" height="36"></a>
			</figure>
			   <form>
				<div class="access_social" style="text-align: center;">
					<h4 style="font-weight: 600;">아이디 찾기</h4>
					<h6>고객님의 정보와 일치하는 아이디 목록입니다.</h6>
				</div>
				<div class="divider"></div>

				<c:if test="${idFind == null }">
				<div class="form-group" style="border: 1px solid black; height: 20%; padding: 2%; color: black;">
						<input type="radio" name="ck" id="" value="아이디" checked="checked"/> 아이디 : 가입된 아이디가 없습니다
						<p style="color: black;" class="float-right">가입 날짜 :</p>
				</div>

				</c:if>
				<c:if test="${idFind != null }">
				<div class="form-group" style="border: 1px solid black; height: 20%; padding: 2%; color: black;">
						<input type="radio" name="ck" id="" value="아이디" checked="checked"/> 아이디 : ${idFind.mb_id}
						<p style="color: black;" class="float-right">가입 날짜  : <fmt:formatDate value="${idFind.mb_joindate}" pattern="YYYY-MM-dd"/></p>
				</div>
				</c:if>

				<div class="form-group add_top_30">
					<div class="clearfix" style="text-align: center;">
						<input type="button" value="로그인하기" class="btn_1" style="text-align: center;"/>
						 <input type="button" value="비밀번호 찾기" class="btn_1" />

					</div>


						<div class="add_top_15"><h6 class="text-center">가입한 아이디가 보이지 않으신가요?</h6></div>

				</div>
			</form>
			<div class="copy">© 2020 Grooming</div>
		</aside>

	</div>
</body>
</html>