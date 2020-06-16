<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
 <head>
 <title>header</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Ansonika">

	<!-- 링크 정보  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

    <!-- icon 링크 -->
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/icon_fonts/css/icon_set_1.css" rel="stylesheet">


	<!-- 링크 정보  -->

</head>

<body>
<%-- 	<c:url value=""/> --%>
		<header class="header map_view menu_fixed">
			<div id="logo">
				<a href="<c:url value="/"/>">
					<img src="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_logo_main.png" width="150" height="36" data-retina="true" class="Grooming_logo_header_main" alt="메인이미지">
				</a>
			</div>
			<ul id="top_menu">
				<!-- 회원별로 -->

				<!-- 비로그인시 -->
				<c:if test="${login == null }">
					<li></li>
					<li><a href="<c:url value="/login"/>" class="cart-menu-btn" title="로그인"></a></li>
					<li><a href="<c:url value="/agreementJoin"/>" id="" class="login" title="회원가입"></a></li>
					<!-- <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li> -->
				</c:if>


				<!-- 사용자 로그인시 -->
				<c:if test="${login != null}">
					<li><a href="<c:url value="/bookmarksearch"/>" class="wishlist_bt_top" title="찜"></a></li>
					<li class="nv_login_li_icon_1"  style="margin-top: 7px;"><a href="<c:url value="/mypageInfo"/>" id="logout" class="icon-doc-1" title="마이페이지" style="color: black; font-size: 22px; "></a></li> <!-- 마이페이지 이미지로 바꾸셈 -->
					<li class="nv_login_li_icon_1" style="margin-top: 7px;"><a href="<c:url value="/logout"/>" class="icon-logout" title="로그아웃" style="color: black; font-size: 22px;"><strong></strong></a></li>

				</c:if>

<!-- 				판매자 로그인시 -->
<%--  				<c:if test="${dInfo.de_licencenum != null }"> --%>
<%-- 					<li><a href="<c:url value="/logout"/>" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li> --%>
<%-- 					<li><a href="<c:url value="/logout"/>" id="sign-in" class="login" title="Sign In">Sign In</a></li> --%>
<%-- 					<li><a href="<c:url value="/logout"/>" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li> --%>
<%-- 					<li><a href="<c:url value="/logout"/>" id="logout" class="login" title="Logout">LOG OUT</a></li> --%>
<%-- 				</c:if> --%>

				<!-- 관리자 로그인시 -->
			<%-- 	<c:if test="${admin != null }">
					<li><a href="<c:url value="/logout"/>" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
					<li><a href="<c:url value="/logout"/>" id="sign-in" class="login" title="Sign In">Sign In</a></li>
					<li><a href="<c:url value="/logout"/>" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
					<li><a href="<c:url value="/logout"/>" class="" title="">여기는 관리자용 페이지 이동칸</a></li>
				</c:if> --%>


			</ul>
			<!-- /top_menu -->
			<a href="#menu" class="btn_mobile">
				<div class="hamburger hamburger--spin" id="hamburger">
					<div class="hamburger-box">
						<div class="hamburger-inner"></div>
					</div>
				</div>
			</a>
			<nav id="menu" class="main-menu">
				<ul>
					<li><span><h6 class="grooming-main-menu-name">${login.mb_name}</h6></span></li>

					<li><span><a href="#0">GROOMING</a></span>
						<ul>
							<li><a href="<c:url value="/corporation"/>">GROOMING ci & 스토리</a></li>

						</ul>
					</li>
					<li><span><a href="#0">소식</a></span>
						<ul>
							<li><a href="<c:url value="/noticeListPage"/>">공지사항</a></li>
						</ul>
					</li>
					<li><span><a href="<c:url value="/faqList"/>">고객센터</a></span>
						
						<ul>
						<c:if test="${mb.id eq null }"></c:if>
							<li><a href="<c:url value="/inquiryCustomerList?mb_id=${login.mb_id }"/>">1:1문의</a></li>
							<li><a href="<c:url value="/faqList"/>">FAQ</a></li>
						</ul>
					</li>

				</ul>
			</nav>

		</header>
		<!-- /header -->


	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="<c:url value='/resources/resources/main_resources/js/markerclusterer.js'/>"></script>
	<script src="<c:url value='/resources/resources/main_resources/js/map_restaurants_half_screen.js'/>"></script>
	<script src="<c:url value='/resources/resources/main_resources/js/infobox.js'/>"></script>

</body>

</html>