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
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->

</head>

<body>
<div id="page">
		<!-- header -->
		<jsp:include page="../include/header.jsp" />
		<!-- header end -->

		<!-- contents -->
		<!-- =======================================================================================================================================================================================================================  -->
		<main>
			<section class="hero_single version_2" >
				<div class="wrapper">
					<div class="container margin_60_35" style="margin-bottom: 10%; text-align: center; padding-bottom: 7%; ">
						<!-- jstl 로 이미지  -->
						<img src="img/Grooming_300_200_LOGO.png" alt="Grooming_LOGO" class="add_top_220"/>
						<form action="">
							<div id="custom-search-input">
								<div class="input-group">
									<!-- # 검색 창 name: -->
									<input type="text" name="#" class=" search-query"
										placeholder="지역검색">
									<!-- # 검색 버튼 submit 나중에 교체 해야함 -->
									<input type="submit" class="btn_search" value="Search">
								</div>
							</div>
						</form>
						<!-- form end -->
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