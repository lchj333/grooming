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
    <title>grooming_faq_listanddetail.jsp</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

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
									<!-- 제목출력 -->
									<a data-toggle="collapse" href="#collapseOne_payment" aria-expanded="true"><i class="indicator ti-minus">
									<c:out value="${inform.f_title }"></c:out></i></a>
								</h5>
							</div>
							<div id="collapseOne_payment" class="collapse show" role="tabpanel" data-parent="#payment">
								<div class="card-body">
								<!-- 내용출력 -->
									<p><c:out value="${inform.f_con }"></c:out></p>
								</div>
							</div>
							
							</c:forEach>							
						</div>
		<!-- 페이징 처리 -->
		<c:if test="${prev}">
			<span>[ <a href="/control/noticeListPage?num=${startPageNum - 1}">이전</a> ]</span>
		</c:if>
		
		<!-- 페이지 모음 출력 -->
		<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
			<span>
				<!-- 현재보고있는 페이지 글자 두껍게해서 직관성 향상-->
				<c:if test="${select != num }">
					<a href="/control/noticeListPage?num=${num}">${num}</a>									
				</c:if>
				<c:if test="${select == num }">
					<b>${num }</b>
				</c:if>
			</span>
		</c:forEach>
					
		<c:if test="${next}">
			<span>[ <a href="/control/noticeListPage?num=${endPageNum + 1}">다음</a> ]</span>
		</c:if>
		<!-- 페이징처리 끝 -->
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
	<div id="toTop"></div><!-- Back to top button -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	
	<!-- COMMON SCRIPTS -->

</body>

</html>