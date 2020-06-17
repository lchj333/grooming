<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Grooming_에러페이지</title>

<!-- GOOGLE WEB FONT -->
<link
href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800"
rel="stylesheet">

<!-- BASE CSS -->
<link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

<!-- YOUR CUSTOM CSS -->
<link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">


</head>


<div id="page">
	<main>
		<div id="error_page" style="background-image: url('${pageContext.request.contextPath}/resources/main_resources/img/404-에러-페이지.png');">
			<div class="container">
				<div class="row justify-content-center text-center">
					<div class="col-xl-7 col-lg-9">
						<div style="margin-bottom: 30px;">
						<i class="icon_error-triangle_alt" style="font-size:70px; color: black; margin-bottom: 20px;"  ></i>
						<p style="color: black; font-size: 30px; margin-bottom: 5px;">서비스 점검 및 오류입니다</p>
						<h6>다른 문제가 있을시 관리자에게 문의 해주세요.</h6>
						</div>
						<form>
							<div class="search_bar_error">
								<a href="<c:url value="/"></c:url>"><input type="button" class="btn_1 text-center" value="메인으로" /></a>
							</div>
						</form>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /error_page -->
	</main>
	<!--/main-->


</div>
<!-- page -->

<div id="toTop"></div>
<!-- Back to top button -->

</body>
</html>