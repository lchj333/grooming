<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/main_resources/css/grooming_qnaboard_customlist.css" />
<meta charset="UTF-8">
<title>noticelist</title>
</head>
<body>

<div id="page">
		<jsp:include page="../include/header.jsp" />
<!-- contents -->
	<form action="#" id="gr_noticeboard_list_form">
		<div id="grooming_qnaboard_customl\ist_div">
			<div id="grooming_qnaboard_customlist_section">
				<div id="grooming_qnaboard_customlist_articlelist">
					<div id="grooming_qnaboard_customlist_maintitle">공지사항</div>
					<div id="grooming_qnaboard_customlist_tablediv">
					<c:forEach var="a" items="${list }">
						<div id="grooming_qnaboard_customlist_tr">
							<div class="grooming_qnaboard_customlist_td" id="grooming_qnaboard_customlist_td1"><a href="noticeDetail?nt_no=${a.nt_no }&num=${pn}">${a.nt_title }</a></div>
							<div class="grooming_qnaboard_customlist_td" id="grooming_qnaboard_customlist_td2"><fmt:formatDate value="${a.nt_regdate }" pattern="YY.MM.dd"/></div>
						</div>
						<div id="grooming_qnaboard_customlist_tr"></div>
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
				</div>
				<!-- 관리자일경우에만 공지 등록가능 -->
				<%-- <c:if test="${ad_id != null }"> --%>
				<a href="noticeInsert"><input type="button" value="공지등록" class="btn_1 medium" /></a>
				<%-- </c:if> --%>
			</div>
		</div>
	</form>
</div>

	<jsp:include page="../include/footer.jsp" />
</body>
</html>