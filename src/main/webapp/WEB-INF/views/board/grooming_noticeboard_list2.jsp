<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/main_resources/css/grooming_noticeboard_list1.css" />
<meta charset="UTF-8">
<title>noticelist</title>
</head>
<body>
<jsp:include page="../mypage/mypage_nav.jsp" />
<div id="page">
<!-- contents -->
	<form action="#" id="gr_noticeboard_list_form">
		<div id="grooming_qnaboard_customlist_div">
			<div id="grooming_qnaboard_customlist_section">
				<div id="grooming_qnaboard_customlist_articlelist">
					<div id="grooming_qnaboard_customlist_maintitle">공지사항(관리자)</div>
					<div id="grooming_qnaboard_customlist_tablediv">
					<c:forEach var="a" items="${list }">
						<div id="grooming_qnaboard_customlist_tr">
							<div class="grooming_qnaboard_customlist_td" id="grooming_qnaboard_customlist_td1"><a href="noticeDetail2?nt_no=${a.nt_no }&num=${pn}">${a.nt_title }</a></div>
							<div class="grooming_qnaboard_customlist_td" id="grooming_qnaboard_customlist_td2"><fmt:formatDate value="${a.nt_regdate }" pattern="YY.MM.dd"/></div>
						</div>
					</c:forEach>
					</div>
				
		<!-- 페이징 처리 -->
		<c:if test="${prev}">
			<span>[ <a href="/control/noticeListPage2?num=${startPageNum - 1}">이전</a> ]</span>
		</c:if>
		
		<!-- 페이지 모음 출력 -->
		<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
			<span>
				<!-- 현재보고있는 페이지 글자 두껍게해서 직관성 향상-->
				<c:if test="${select != num }">
					<a href="/control/noticeListPage2?num=${num}">${num}</a>									
				</c:if>
				<c:if test="${select == num }">
					<b>${num }</b>
				</c:if>
			</span>
		</c:forEach>
					
		<c:if test="${next}">
			<span>[ <a href="/control/noticeListPage2?num=${endPageNum + 1}">다음</a> ]</span>
		</c:if>
		<!-- 페이징처리 끝 -->		
<<<<<<< HEAD
		</div>
		<!-- 페이지 처리 div end -->
=======
				</div>
>>>>>>> Minsng
				<!-- 관리자일경우에만 공지 등록가능 -->
				<c:if test="${ad_id != null }"> 
				<a href="noticeInsert"><input type="button" value="공지등록" class="btn_1 medium" /></a>
				</c:if>
			</div>
		</div>
	</form>
</div>
	<script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
    
    <!-- Page level plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/jquery.dataTables.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/dataTables.bootstrap4.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.selectbox-0.2.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/retina-replace.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.magnific-popup.min.js'/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/resources/mypage/js/admin.js'/>"></script>
	<!-- Custom scripts for this page-->
	<script src="<c:url value='/resources/mypage/vendor/dropzone.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/bootstrap-datepicker.js'/>"></script>
</body>
</html>