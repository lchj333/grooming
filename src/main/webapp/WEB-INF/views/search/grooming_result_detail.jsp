<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<!-- 메타 정보 -->

<title>Grooming 가게정보</title>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- 최상단 메뉴 icon -->
<!-- =======================================================================================================================================================================================================================  -->
<!-- ====================링크============================ -->
<!-- 구글 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">


<style>
html, body {
	height: 100%;

}
.hero_in.restaurants_detail {
	height: 550px;
	/* 상단 백그라운드 */
	background-image: url('${pageContext.request.contextPath}/resources/main_resources/img/Grooming_BG.png');

}
</style>
<!-- ====================css============================ -->

</head>
<body>

	<div id="page" class="theia-exception">
		<!-- 네비 부분 -->
		<!-- header -->
		<jsp:include page="../include/header.jsp" />
		<!-- header end -->

		<main>
			<!--  디테일 색션-->
			<section class="hero_in restaurants_detail" id="ttt">
				<!-- 메인 bg main div  -->
				<!-- 디테일 메인 view div -->
				<div class="wrapper">
					<!-- title main -->
					<div class="container">
						<h1 class="fadeInUp">
							<span></span>미미네 샵
						</h1>
					</div>
					<!-- 미리 보기 div & 모아보기-->
					<span class="magnific-gallery">
					<!-- 등록되는 서브 이미지 받기 -->
					<a href="<c:url value="/resource/shopimags/${sessionScope.infoImgs[0]}"/>" class="btn_photos"
						title="Photo title" data-effect="mfp-zoom-in">모아보기</a>
						
						<c:forEach var="img" items="${infoImgs}" step="1">
						 <a href="<c:url value="/resources/shopimags/${img}"/>" title="Photo title"
						data-effect="mfp-zoom-in"></a>
						</c:forEach>
					</span>
				</div>
			</section>
			<!--/title main end-->

			<!-- 본문 div -->
			<div class="bg_color_1">
			    <!-- 상단 바로 가기 링크 div -->
				<nav class="secondary_nav sticky_horizontal" style="">
					<div class="container">
						<ul class="clearfix">
							<li><a href="#description" class="active">상세정보</a></li>
							<li><a href="#reviews">리뷰</a></li>
							<li><a href="#sidebar">예약하기</a></li>
						</ul>
					</div>
				</nav>
				<div class="container margin_60_35">
					<div class="row" style="color: black;">
						<div class="col-lg-8 add_top_15" style="color: black;">
							<section id="description">
								<h3>상세정보</h3>
								<p style="color: gray;">태어난 강아지는 생후 10일까지를 신생아로 본다. 강아지는 견종에
									따라 체중이 매우 다양하며 태어난 지 14일 무렵 눈을 뜨고 소리에 반응하며 걷기 시작한다.[6] 몸떨기 반사는
									그 보다 1주일 정도 빠르다. 젓빨기는 첫 2주간은 2시간 마다 이루어지며 8일만에 몸무게가 두 배로 늘 정도로
									빠르게 성장한다. 이 기간엔 따로 마련한 출산장에서 강아지의 관리를 전적으로 어미개에게 맡기는 것이 좋다.[7]
									강아지가 자신의 몸음 부들부들 떠는 몸떨기 반사는 체온을 유지하기 위한 자연스런 반응이다. 강아지는 생후 3주에서
									3개월에 걸쳐 한 배에서 나온 강아지들과 어미, 사람들과 사회적 관계를 맺는 이행기를 거친다.
								</p>
								<hr />

								<!-- 강아지 갤러리  -->
								<h3 class="add_bottom_30">강아지&매장 이미지</h3>
								<div class="container margin_60_35">
									<div class="grid">
										<ul class="magnific-gallery">
											<c:forEach var="img" items="${infoImgs}">
											<li>
												<figure>
															<img src="<c:url value="/resources/shopimags/${img}"/>" width="50px;" height="" alt="상세 이미지" />
													<figcaption>
														<div class="caption-content">
															<img src="img/gallery/large/pic_1.jpg" alt="">
															<a href="img/gallery/large/pic_1.jpg" title="Photo title"
																data-effect="mfp-zoom-in"> <i class="pe-7s-albums"></i>
																<p>Your caption</p>
															</a>
														</div>
													</figcaption>
												</figure>
											</li>
											</c:forEach>
										</ul>
									</div>
									<!-- /grid gallery -->
								</div>

								<!-- 인스타 그램 -->
								<hr>
								<h3>instagram</h3>
								<div id="instagram-feed-restaurant" class="clearfix"></div>
								<hr>
								<h3>매장 위치</h3>
								<div id="map" class="map map_single add_bottom_30"></div>
								<!-- End Map -->
							</section>
							<!-- /section -->

							<section id="reviews">

								<div class="reviews-container">
									<h2>Reviews</h2>
									<hr>
									<div class="review-box clearfix">
										<figure class="rev-thumb">
											<img src="img/Grooming_300_200_LOGO.png" alt="">
										</figure>
										<div class="rev-content">
											<div class="rating">
												<!-- 별점 -->
												<i class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star"></i>
											</div>
											<div class="rev-info">이름 :홍길동 날짜:2020-10-30</div>
											<div class="rev-text">
												<p style="color: gray;">으으으은우ㅡ으으으ㅐㅔ라ㅓㅠㅇㄹ뉴ㅗㅓㅏ ㅇㅀㄴ뮤ㅓㅏ
													ㄹㄴㅇ휴ㅓㅏㅣ ㅁㄴㅇㄿ ㅗㅠㅓㅏㅇㅀㅁㄴ호ㅠㅓㅏㅣ ㅁㅇㄿ티 호ㅠㅓㅏㅇㄿ</p>
											</div>
										</div>
									</div>
									<!-- /댓글 박스 div 끝 -->

								</div>
								<!-- /전체 리뷰 end -->
							</section>
							<!-- /리뷰  end -->
							<hr>
							<!-- 리뷰를 추가 하다  -->
							<div class="add-review">
								<h5>
									<strong>리뷰 남기기</strong>
								</h5>
								<form>
									<div class="row">
										<div class="form-group col-md-6">
											<label>이름 *</label> <input type="text" name="name_review"
												id="name_review" placeholder="name" class="form-control">
										</div>
										<div class="form-group col-md-6">
											<label>이메일 *</label> <input type="email" name="email_review"
												id="email_review" class="form-control"
												placeholder="정확한 이메일 정보를 입력하세요">
										</div>
										<div class="form-group col-md-6">
											<label>별점 </label> <input type="text" name="star_score" id=""
												class="form-control" placeholder="'별점 숫자로 입력하세요'">
										</div>
										<div class="form-group col-md-12">
											<label>글쓰기</label>
											<textarea name="review_text" id="review_text"
												class="form-control" style="height: 130px;"></textarea>
										</div>
										<div class="form-group col-md-12 add_top_20">
											<input type="submit" value="전송하기" class="btn_1"
												id="submit-review">
										</div>
									</div>
								</form>
							</div>
							<!-- 리뷰를 추가 하다  -->
						</div>
						<!-- /col -->
						<!-- 예약 할수 있는 슬라이드  -->

						<aside class="col-lg-4" id="sidebar">
							<div class="box_detail booking">
								<div class="price">
									<span style="font-size: 20px;">GROOMING 미용예약</span>

								</div>


								<div class="form-group" id="input_date">
									<input class="form-control" type="text" name="dates"
										placeholder="When.."> <i class="icon_calendar"></i>
								</div>
								<form action="/reservation/reservCk">
											<!-- 임시 태그 -->
											<input type="hidden" name="re_species" value="대형견" />
											
									<div class="panel-dropdown">
										<a href="#">견종선택 <span class="qtyTotal">1</span></a>
										<div class="panel-dropdown-content right">
											<div class="qtyButtons">
												<label>대형견</label> 
												<input type="text" name="re_specie" value="1">
											</div>
											<div class="qtyButtons">
												<label>중형견</label> 
												<input type="text" name="re_specie" value="0">
											</div>
											<div class="qtyButtons">
												<label>소형견</label> 
												<input type="text" name="re_specie" value="0">
											</div>
										</div>
									</div>


									<div class="form-group clearfix">
										<div class="custom-select-form">
											<!-- <select class="wide">
									<option>Time</option>
									<option>Lunch</option>
									<option>Dinner</option>
								</select> -->
											<input class="form-control" type="text" name="re_weight"
												id="" placeholder="견종 몸무게"> 
											<input class="form-control add_top_15" type="text" name="re_cut"
												id="" placeholder="견종 컷 및 특이사항">
										</div>
									</div>
								</form>
								<a href="cart-1.html" class=" add_top_30 btn_1 full-width ">예약하기</a>
								<a href="wishlist.html"
									class="btn_1 full-width outline wishlist"><i
									class="icon_heart"></i> 찜목록에 추가하기</a>
								<div class="text-center">
									<small>GROOMING</small>
								</div>
							</div>

						</aside>







					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bg_color_1 -->
		</main>
		<!--/main-->
		<div id="toTop" style="display: none;"></div>
		<!-- 끌어 올리기 -->

		<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/map_single_restaurant.js"></script>
	<script src="js/infobox.js"></script>


		<!-- 푸터 -->
		<jsp:include page="../include/footer.jsp" />
		<!-- 푸터 end -->
		<div id="toTop" style="display: none;"></div>
		<!-- Back to top button -->
</div>
<!-- page -->

	<!-- 스크립트 정보  -->

	<!-- DATEPICKER  -->
	<script>
		$('input[name="dates"]').daterangepicker(
				{
					"singleDatePicker" : true,
					"autoApply" : true,
					parentEl : '#input_date',
					"linkedCalendars" : false,
					"showCustomRangeLabel" : false
				},
				function(start, end, label) {
					console.log('New date range selected:'
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD') + ' (predefined range:'
							+ label + ')');
				});
	</script>

	<!-- INPUT QUANTITY  -->
	<script src="js/input_qty.js"></script>

	<!-- INSTAGRAM FEED  -->
	<script>
		$(window).on('load', function() {
			"use strict";
			$.instagramFeed({
				'username': 'restaurantetanit',
				'container': "#instagram-feed-restaurant",
				'display_profile': false,
				'display_biography': false,
				'display_gallery': true,
				'get_raw_json': false,
				'callback': null,
				'styling': true,
				'items': 12,
				'items_per_row': 6,
				'margin': 1
			});
		});
	</script>



</body>
</html>