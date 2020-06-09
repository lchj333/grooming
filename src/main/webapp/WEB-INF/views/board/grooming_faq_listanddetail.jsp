<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Panagea | Premium site template for travel agencies, hotels and restaurant listing.</title>


    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="<c:url value='/resources/mypage/css/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/mypage/css/style.css' />" rel="stylesheet">
	<link href="<c:url value='/resources/mypage/css/vendors.css' />" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="<c:url value='/resources/mypage/css/custom.css' />" rel="stylesㅊheet">

</head>

<body>
	
	<div id="page" class="theia-exception">
	<main>
	
	<jsp:include page="../include/header.jsp"></jsp:include>

		<div class="container margin_60_35">
			<div class="row" id="grooming_faq_maindiv">
				<div class="col-lg-9" id="faq">
					<h4 class="nomargin_top" id="faq_maintitle">자주묻는질문</h4>
					<div role="tablist" class="add_bottom_45 accordion_2" id="payment">
						<div class="card">
							<c:forEach var="inform" items="${list }">
							<div class="card-header" role="tab">
								<h5 class="mb-0">
									<a data-toggle="collapse" href="#collapseOne_payment" aria-expanded="true"><i class="indicator ti-minus"></i><c:out value="${inform.f_title }"></c:out></a>
								</h5>
							</div>
							<div id="collapseOne_payment" class="collapse show" role="tabpanel" data-parent="#payment">
								<div class="card-body">
									<p><c:out value="${inform.f_con }"></c:out></p>
								</div>
							</div>
							</c:forEach>
						</div>
						<!-- /card -->
					</div>
					<!-- /accordion payment -->
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>
		<!--/container-->
	</main>
	<!--/main-->
	</div>
	

	<!--/footer-->
	<!-- page -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Sign In</h3>
		</div>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->
	
	<div id="toTop"></div><!-- Back to top button -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	
	<!-- COMMON SCRIPTS -->

</body>

</html>