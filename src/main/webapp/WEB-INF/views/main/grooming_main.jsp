<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<title>Grooming</title>

 <!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){


	    $("#search").on('click', function(){

		    document.frm.action = "searchShop";
			document.frm.method = "POST";
			document.frm.submit();

	    });


	});

</script>

<body>
<div id="page">
		<!-- header -->
		<%-- <c:import url="../include/header.jsp"/> --%>
		<%-- <jsp:include page="../include/header.jsp" /> --%>
		<%@include file="../include/header.jsp" %>

		<!-- header end -->

		<!-- contents -->
		<!-- =======================================================================================================================================================================================================================  -->
		<div>
			<section class="hero_single version_2" >
				<div class="wrapper">
					<div class="container margin_60_35" style="margin-bottom: 10%; text-align: center; padding-bottom: 7%; ">
						<!-- jstl 로 이미지  -->
						<img src="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_300_200_LOGO.png" alt="Grooming_LOGO" class="add_top_220"/>
						<form action="/search/shopList" name="frm">
							<div id="custom-search-input">
								<div class="input-group">
									<!-- # 검색 창 name: -->
									<input type="text" name="main_search_data" class=" search-query"
										placeholder="지역검색">

									<!-- # 검색 버튼 submit 나중에 교체 해야함 -->
									<input type="submit" class="btn_search" value="Search" id="search" name="reg_shopaddress"/>
								</div>
							</div>
						</form>
						<!-- form end -->
					</div>
				</div>
			</section>
		</div>
		<div id="toTop" style="display: none;"></div>
		<!-- footer -->
	<jsp:include page="../include/footer.jsp" />
	<!-- footer end -->
</div>
</body>
</html>