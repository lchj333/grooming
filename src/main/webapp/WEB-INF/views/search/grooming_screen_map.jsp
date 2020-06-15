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
					   				<h4><strong>${count}개</strong>검색되었습니다.</h4>
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
											<input class="form-control" type="text" name="searchData" placeholder="검색">
											<i class="icon_search"></i>
										</div>


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
								<form action="">
									<div class="row">
										<div class="col-md-6">
											<div class="filter_type">
												<ul>
													<li><label> <input type="checkbox"
															class="icheck" name="area" value="경기" checked>경기
															<small>
																<!-- 나중에 갯수 표시-->
														</small>
													</label></li>
													<li><label> <input type="checkbox"
															class="icheck" name="area" value="서울">서울 <small>
																<!-- 나중에 갯수 표시-->
														</small>
													</label></li>
												</ul>
											</div>
										</div>
										<div class="col-md-6">
											<div class="filter_type">
												<ul>
													<li><label> <input type="checkbox"
															class="icheck" name="area" value="성남">성남 <small>
																<!-- 나중에 갯수 표시-->
														</small>
													</label></li>
													<li><label> <input type="checkbox"
															class="icheck" name="area" value="수원">수원<small></small>
													</label></li>
												</ul>
											</div>
										</div>
									</div>
								</form>
							</div>
					</div>
					<!-- /필터 세부 -->
		<!-- 썸네일 결과 1 (찜,맵 , 평점)-->
		<c:forEach var="shop" items="${shopList}" varStatus="status">
		<div class="box_list map_view">
		    <div class="row no-gutters add_top_20">
		    	<!-- 썸네일  -->
		        <div class="col-4">

		            <figure>
		                  <a href='<c:url value="${shop.de_licencenum}"></c:url>'><img src="<c:out value="${shop.reg_img}"/>" class="img-fluid" alt="" width="800" height="533"></a>
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
			                <h3 style="color:gray; margin-top: 8px;">
			                	<a href="#" style="color:gray; margin-top: 5px;" id="shoptag" onclick="godetail(${shop.de_licencenum})">
			                		<c:out value="${shop.ref_shopname}"/>
			                	</a>
			                </h3>

						<br />
		                <strong><span style="color:#fbbc41;"><c:out value="${shop.reg_price}"/></span></strong>
		            </div>

		            <div class="add_left_15"> <a href="#" onclick="onHtmlClick('Marker',0)" class="address float_left"><c:out value="${shop.reg_shopaddress}"/></a></div>
		            <div class="add_left_15"> <span style="color:gray;"><strong>TEL: <c:out value="${shop.mb_phone}"/></strong></span></div>
		        </div>
		    </div>
		</div>
		<!-- /썸네일 결과 1 (찜,맵 ,)-->
		</c:forEach>

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



	<!-- 공통 js 파일 footer있으면 필요 없음 -->
    <script src="js/common_scripts.js"></script>
    <script src="js/main.js"></script>
	<script src="assets/validate.js"></script>

	<!-- map에 관련한 js파일  -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/markerclusterer.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/map_hotels_half_screen.js"></script>
	<script src="${pageContext.request.contextPath}/resources/main_resources/js/infobox.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		function godetail(number) {
			document.goform.action = "<c:url value="/search/detailShop"/>";
			document.goform.pknum.value = number;
			document.goform.submit();
		}
	</script>
	<!-- 디테일로 이동하기 위한 폼태그 -->
	<form action="" name="goform">
		<input type="hidden" name="de_licencenum" id="pknum" />
	</form>
</body>
</html>