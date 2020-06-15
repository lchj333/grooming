<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grooming_기업소개</title>
<!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- GOOGLE WEB FONT -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800"
	rel="stylesheet">


</head>
<body>

	<div id="page">
		<!-- header -->
		<jsp:include page="../include/header.jsp" />
		<!-- header end -->
			<!-- 창주 bg 확인  -->
		<main>
			<section class="hero_in general" style="background-image: url('${pageContext.request.contextPath}/resources/main_resources/img/Grooming_BG.png');">

				<div class="wrapper" >
					<div class="container add_top_30">
						<h1 class="fadeInUp">
							<span></span>GROOMING
						</h1>
					</div>
				</div>
			</section>
			<!--/hero_in-->
		<section class=" ">
			<div class="container margin_80_55 ">
				<div class="main_title_2 add_top_30">

					<h2>GROOMING?</h2>
					<h6 class="add_top_15">서비스가 필요한 고객과 서비스를 제공하는 방문미용 전문가 및 샵을 빠르게 연결해드리는 전문가 매칭 서비스입니다.</h6>
				</div>
				<div class="row">

					<div class="col-lg-4 col-md-6">
						<a class="box_feat" href="#0"> <img src="${pageContext.request.contextPath}/resources/main_resources/img/grooming_강아지.png" alt="" />

							<h3> 강아지 미용컷</h3>
							<p style="color: gray;">
								고객이 맞는 날짜와 견종에 맞는 맞춤 미용시스템 적용
							</p>
						</a>
					</div>

					<div class="col-lg-4 col-md-6">
						<a class="box_feat" href="#0"> <img src="${pageContext.request.contextPath}/resources/main_resources/img/grooming_고양이.png" alt="" />
							<h3>고양이 미용컷</h3>
							<p style="color: gray;">
							고객이 맞는 날짜와 고양이에 맞는 맞춤 미용시스템 적용
							</p>
						</a>
					</div>

					<div class="col-lg-4 col-md-6">
						<a class="box_feat" href="#0"><img src="${pageContext.request.contextPath}/resources/main_resources/img/grooming_맞춤.png" alt="" />
							<h3>AS 서비스 </h3>
							<p style="color: gray;">미용 도중 고객 변심이 아닌 이상
								무료 AS 실행 고객문의 000-0000-0000
							</p>
						</a>
					</div>
				</div>
				<!--/row-->
			</div>
			<!-- /container -->
		</section>
		<hr />
		<section class="hero_single add_bottom_60">
			<div class="container margin_80_55 ">
				<div class="main_title_2 add_top_30">

					<h2>GROOMING CI & STORY</h2>
					<h6 class="add_top_15"> 반려견,반려묘의 미용을 위한 브랜드 </h6>
				</div>
				<div class="row">

					<div class="col-lg-12 ">
						<a class="box_feat" href="#0">

							<img src="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_logo_600_400.png" alt="" class="grooming_cp_img"/>
							<p style="color: gray;">
								Grooming logo
							</p>
						</a>
					</div>




				</div>
				<!--/row-->
			</div>
			<!-- /container -->
		</section>


		</main>
		<!--/main-->


		<div id="toTop" style="display: none;"></div>
		<!-- footer -->
		<jsp:include page="../include/footer.jsp" />
		<!-- footer end -->
	</div>
	<!--/container-->
</body>
</html>