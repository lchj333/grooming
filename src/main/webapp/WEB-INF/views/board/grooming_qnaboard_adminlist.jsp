<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mypage/css/grooming_qnaboard_customlist.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    .menu #gr_qna_a{cursor:pointer;}
    .menu .hide{display:none;}
</style>
<script type="text/javascript">
// html dom 이 다 로딩된 후 실행된다.
$(document).ready(function(){
    // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".menu>#gr_qna_a").click(function(){
        var submenu = $(this).next("ul");
        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });
});
</script>
</head>
<body>
<div id="page">
<!-- contents -->
	<form action="#" id="grooming_qnaboard_customlist_form">
		<div id="grooming_qnaboard_customl\ist_div">
			<div id="grooming_qnaboard_customlist_section">
				<div id="grooming_qnaboard_customlist_articlelist">
					<div id="grooming_qnaboard_customlist_maintitle">문의사항 관리</div>
					<div id="grooming_qnaboard_customlist_tablediv">
						<ul id="gr_qna_ul">
							<c:forEach var="a" items="${list }">
								<li class="menu" id="gr_qna_li">
								<div id="gr_qna_a"> 
									<!-- 제목 -->
									<div id="gr_qna_title"><c:out value="${a.in_title }"></c:out></div>
									<!-- 날짜 -->
									<div id="gr_qna_regdate" ><c:out value="${a.in_nowdate }"></c:out></div>
								</div> 
									<ul class="hide" id="gr_qna_slideul">
										<li id="gr_qna_slideli"><c:out value="${a.in_con }"></c:out></li>
									</ul>
								</li>
							</c:forEach>
						</ul>
		<!-- 페이징 처리 -->
		<div style="color:black; float:right; font-size: 20px; margin-top: 20px; margin-right:20px;">
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
		</div>
		<!-- 페이징처리 끝 -->	
					</div>			
				</div>
			</div>
		</div>
	</form>
</div>
<jsp:include page="../mypage/mypage_nav.jsp"></jsp:include>
</body>
</html>