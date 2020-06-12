<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
<meta name="author" content="Ansonika">
<title>GROOMING 예약확인</title>

<!-- 최상단 메뉴 icon -->
<!-- =======================================================================================================================================================================================================================  -->
<link rel="shortcut icon" href="img/Grooming_icon_72.png"
	type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/Grooming_icon_72.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/Grooming_icon_72.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/Grooming_icon_114.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/Grooming_icon_144.png">

<!-- =======================================================================================================================================================================================================================  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- GOOGLE WEB FONT -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800"
	rel="stylesheet">

<!-- BASE CSS -->
<link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">

<!-- YOUR CUSTOM CSS -->
<link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

<style>
.invoice-title h2, .invoice-title h3 {
	display: inline-block;
}

.table>tbody>tr>.no-line {
	border-top: none;
}

.table>thead>tr>.no-line {
	border-bottom: none;
}

.table>tbody>tr>.thick-line {
	border-top: 2px solid;
}
</style>



</head>
<body>
	<div id="page">
		<!-- header -->
		<jsp:include page="../include/header.jsp" />
		<!-- header end -->

		<!-- contents -->
		<!-- =======================================================================================================================================================================================================================  -->
		<main>
			<section class="hero_single version_2 ">
				<div class="wrapper">
					<div class="container">
						<div class="container add_top_60 ">
							<div class="row magin_60">
								<div class="col-12">
									<div class="add_top_60" style="color: black">

										<h5 class="">
												<!-- 데이터 올곳 -->
											<strong>예약번호#55555 </strong>
										</h5>
									</div >

									<hr>
									<div class="magin_60_35">
									<!-- 데이터 올곳 -->
										<h2>이돈갑 님 예약완료 되었습니다.</h2>
										<h5>판매자가 승인 후 진행됩니다.</h5>

									</div>
								</div>
							</div>
							<hr>
							<div class="row col-6 add_bottom_75">

								<div class="col-3">
									<input type="button" class="btn_1  add_top_15" value="mypage가기" />
								</div>
							</div>
							<!-- 더넣을곳 -->

						</div>




					</div>
				</div>
			</section>
		</main>
		<div id="toTop" style="display: none;"></div>
		<!-- footer -->
		<jsp:include page="../include/footer.jsp" />
		<!-- footer end -->
	</div>






</body>
</html>