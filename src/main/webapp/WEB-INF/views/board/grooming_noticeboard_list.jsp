<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/main_resources/css/gr_noticeboard_list.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="page">

<!-- header -->
<jsp:include page="../include/header.jsp"/>
<!-- header end -->

<!-- contents -->
	<form action="#" id="gr_noticeboard_list_form">
		<div id="gr_noticeboard_list_div">
			<section id="gr_noticeboard_list_section">
				<ul id="gr_noticeboard_list_pagetitle">전체공지</ul>
				<ul id="gr_noticeboard_list_articlelist">
					<c:forEach var="i" begin="1" end="15">
						<li id="gr_noticeboard_list_li">
							<%-- <a href="$" id="gr_noticeboard_list_li_a"><c:out value="${nt_title }"></c:out></a> --%>
							공지사항 입니다.공지사항 입니다.공지사항 입니다.공지사항 입니다.
						</li>
					</c:forEach>
				</ul>
			</section>
		</div>
	</form>
</div>
<!-- footer -->
<jsp:include page="../include/footer.jsp"/>
<!-- footer end -->
</body>
</html>