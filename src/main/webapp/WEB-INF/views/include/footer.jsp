<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<body>
	<footer>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-5 col-md-12 p-r-5">
					<p><img src="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_logo_main2.png" class="add_top_15" width="150" height="36" alt="로고" id="footer-logo"></p>
					<p>서울특별시 구로구 구트로 / TEL 02-740-7584 / FAX 02-740-2450 /<br /> e-mail: GROOMING @ gmail.com
					<br /><strong>	COPYRIGHT 2020 GROOMING</strong></p>

				</div>
				<div class="col-lg-3 col-md-6 ml-lg-auto">
					<h5>바로가기 링크</h5>
					<ul class="links">
						<li><a href="<c:url value="/corporation"/>">소개</a></li>
						<li><a href="<c:url value="/login"/>">로그인</a></li>
						<li><a href="<c:url value="/agreementJoin"/>">회원가입</a></li>
						<li><a href="contacts.html">연락처</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5>문의 전화</h5>
					<ul class="contacts">
						<li><a href="tel://812345671234"><i class="ti-mobile"></i> + 81 23 4567 1234</a></li>
						<li><a href="GROOMING@gmail.com"><i class="ti-email"></i> GROOMING@gmail.com</a></li>
					</ul>
				</div>
			</div>
			<!--/row-->
			<hr>
			<div class="row add_b">
				<div class="col-lg-6 ml-lg-auto add_bottom_45">
					<ul id="additional_links">
						<li><a href="#0">개인정보 동의 관련 문서</a></li>
						<li><a href="#0">개인정보</a></li>
						<li><span>GROOMING</span></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/footer-->
	<!-- COMMON SCRIPTS -->
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/common_scripts.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/assets/validate.js"></script>
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/markerclusterer.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/map_restaurants_half_screen.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/infobox.js"></script>

</body>
