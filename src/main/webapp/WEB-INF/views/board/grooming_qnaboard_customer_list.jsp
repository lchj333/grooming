<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<div id="grooming_qnaboard_customlist_div">
			<div id="grooming_qnaboard_customlist_section">
				<div id="grooming_qnaboard_customlist_articlelist">
					<div id="grooming_qnaboard_customlist_maintitle">1:1문의(사용자페이지)</div>
					<div id="grooming_qnaboard_customlist_tablediv">
						<ul id="gr_qna_ul">
							<%-- <c:if test="${mb.id eq login.md_id"> --%>
							<c:forEach var="a" items="list">
								<li class="menu" id="gr_qna_li">
								<div id="gr_qna_a"> 
									<!-- 제목 -->
									<div id="gr_qna_title"><c:out value="${a.in_title }"></c:out> 
									</div>
									<!-- 날짜 -->
									<div id="gr_qna_regdate" >
										<fmt:formatDate value="${a.in_nowdate }" pattern="YY.MM.dd"/>
									</div>
								</div> 
									<ul class="hide" id="gr_qna_slideul">
										<li id="gr_qna_slideli">
										<c:out value="${a.in_con }"></c:out>
		  								</li>
									</ul>
								</li>
							</c:forEach>
							<%-- </c:if> --%>
						</ul>	
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<jsp:include page="../mypage/mypage_nav.jsp"></jsp:include>
</body>
</html>