<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <!-- 메타 정보 -->

<title>Grooming 검색 결과</title>
 <!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
  <!-- ====================링크============================ -->
  <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">
   <!-- ====================링크============================ -->
<!-- ====================css============================ -->
<style>
html, body {
	height: 100%;
}
</style>
<!-- ====================css============================ -->




</head>

<body>

	<div id="page">
<!-- 네비 =============================================================== -->

<!-- header -->
		<jsp:include page="../include/header.jsp" />
		<!-- header end -->

		<main>  <!-- 메인 시작  -->
			<div class="container-fluid full-height">  <!-- 최고 루트 div  -->
				<!-- 안에 div -->
				<div class="row row-height">
					<div class="col-lg-5 content-left order-md-last order-sm-last order-last">
						 <!-- 검색 div -->
						<div id="results_map_view">
						   <div class="container-fluid">
							   <div class="row">
				 				  <div class="col-10">
					   				<h4><strong>145개</strong>검색되었습니다.</h4>
				   				  </div>
								   <div class="col-2">
									   <a href="#0" class="search_map btn_search_map_view"></a> <!-- /open search panel -->
								   </div>
			   					</div>
			  					<!-- /row -->
			  					<!-- 검색 돋보기 눌럿을때 나오는 곳 -->
								<div class="search_map_wp">
									<div class="custom-search-input-2 map_view">
										<div class="form-group">
											<input class="form-control" type="text" placeholder="검색">
											<i class="icon_search"></i>
										</div>

										<!-- <select class="wide">
											<option>전체</option>
											<option>고양이샵</option>
											<option>강아지샵</option>
											<option>방문 고양이샵</option>
											<option>방문 강아지샵</option>
										</select> -->
										<!-- 검색 서치 버튼 -->
										<input type="submit" value="검색하기">
									</div>
								</div>
							   <!-- /검색 창 -->
						   </div>
	 				   </div>
	 				 <!-- /검색 div -->

					<!-- 필터 div -->
					<div class="filters_listing version_3">
						<div class="container-fluid">
							<ul class="clearfix">
								<li>
									<!-- 검색 선택 (전체,인기,최신) -->
									<div class="switch-field">
										<input type="radio" id="all" name="listing_filter" value="all" checked>
										<label for="all">전체</label>
										<input type="radio" id="popular" name="listing_filter" value="popular">
										<label for="popular">인기</label>
										<input type="radio" id="latest" name="listing_filter" value="latest">
										<label for="latest">최신</label>
									</div>
								</li>
								<!-- 필터 검색 기능 -->
								<li><a class="btn_filt_map" data-toggle="collapse" href="#filters" aria-expanded="false" aria-controls="filters" data-text-swap="Less filters" data-text-original="More filters">필터 검색</a></li>
							</ul>
						</div>
						<!-- /container -->
					</div>
					<!-- /filters -->

					<!-- 필터 세부 -->
					<div class="collapse map_view" id="filters">
						<div class="container-fluid margin_30_5">
							<h6>지역</h6>
							<div class="row">
							   <div class="col-md-6">
							    <div class="filter_type">
							        <ul>
							            <li>
							                <label>
							                    <input type="checkbox" class="icheck" checked>경기 <small>(23)<!-- 나중에 갯수 표시--></small>
							                </label>
							            </li>
							            <li>
							                <label>
							                    <input type="checkbox" class="icheck">서울 <small>(45)<!-- 나중에 갯수 표시--></small>
							                </label>
							            </li>
							        </ul>
							    </div>
							</div>
							<div class="col-md-6">
							    <div class="filter_type">
							        <ul>
							            <li>
							                <label>
							                    <input type="checkbox" class="icheck">성남 <small>(30)<!-- 나중에 갯수 표시--></small>
							                </label>
							            </li>
							            <li>
							                <label>
							                    <input type="checkbox" class="icheck">수원<small>(25)</small>
							                </label>
							            </li>
							        </ul>
							    </div>
							</div>
							</div>
								<!-- <div class="row">
								<div class="col-md-12">
									<div class="add_bottom_30">
										<h6>거리</h6>
										<div class="distance" style="color: gray;"> 주변근처 <span></span> km</div>
										<input type="range" min="10" max="100" step="10" value="30" data-orientation="horizontal">
									</div>
								</div>
								</div> -->
							<!-- /row -->
						</div>
					</div>
					<!-- /필터 세부 -->
		<!-- 썸네일 결과 1 (찜,맵 , 평점)-->
		<div class="box_list map_view">
		    <div class="row no-gutters add_top_20">
		    	<!-- 썸네일  -->
		        <div class="col-4">

		            <figure>
		                <a href="hotel-detail.html"><img src="img/hotel_1.jpg" class="img-fluid" alt="" width="800" height="533"></a>
		            </figure>

		        </div>
		        <!-- 썸네일  -->
		        <div class="col-8">
		            <div class="wrapper">
		           		<!-- 북마크 DB 넣는곳-->
		                <a href="#0" class="wish_bt"></a>

		                <!-- 별점 DB 넣는곳 -->
		                <div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>

						<!-- 가게 정보 DB 넣는곳 -->
		                <h3 style="color:gray; margin-top: 8px;"><a href="hotel-detail.html" style="color:gray; margin-top: 5px;">
		                	미미 샵</a>
		                </h3>

		                <!-- 상세 정보  DB 정보 넣는곳 -->
		                <span class="price">비비비비비비비비비</span>

						<br />
		                <strong><span style="color:#fbbc41;">30000원~</span></strong>
		            </div>

		            <div class="add_left_15"> <a href="#0" onclick="onHtmlClick('Marker',0)" class="address float_left">경기도 시흥시 은행동 대우 2차</a></div>
		            <div class="add_left_15"> <span style="color:gray;"><strong>TEL: </strong> 010-7360-3725</span></div>
		        </div>
		    </div>
		</div>
		<!-- /썸네일 결과 1 (찜,맵 ,)-->


		<!-- 더보기 버튼 -->
		<p class="text-center add_top_30"><a href="#0" class="btn_1 rounded"><strong>+더보기</strong></a></p>
		<!-- /더보기 버튼 -->
	</div>
	<!-- /검색 결과 좌측 div-->

		<!-- 지도 결과  -->
		<div class="col-lg-7 map-right">
			<div id="map"></div>
			<!-- map-->
		</div>
		<!-- /지도 결과  -->

	</div>
	<!-- /row-->
</div>
<!-- /container-fluid -->

</main>
<!--/main end-->

</div>
<!-- /전체 페이지 div -->



	<!-- COMMON SCRIPTS -->
    <script src="js/common_scripts.js"></script>
    <script src="js/main.js"></script>
	<script src="assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="js/markerclusterer.js"></script>
	<script src="js/map_hotels_half_screen.js"></script>
	<script src="js/infobox.js"></script>


</body>
</html>