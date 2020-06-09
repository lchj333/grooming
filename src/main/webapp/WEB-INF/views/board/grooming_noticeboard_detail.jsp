<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/main_resources/css/gr_noticeboard_detail.css" />
<meta charset="UTF-8">
<title>grooming_noticeboard_detail.jsp</title>
</head>
<body>
<div id="page">
<!-- header -->
<jsp:include page="../include/header.jsp"/>
<!-- header end -->

<!-- contents -->
	<div id="gr_noticeboard_detail_maindiv">
		<div id="gr_noticeboard_detail_title"><span><c:out value="${inform.nt_title }"></c:out></span></div>
		<div id="gr_noticeboard_detail_datehits">
			<span>작성일자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span><fmt:formatDate value="${inform.nt_regdate }" pattern="yy-MM-dd"/>  &nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span>조회수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span><c:out value="${inform.nt_hits }"></c:out></span>
		</div>
		<div id="gr_noticeboard_detail_contents"><c:out value="${inform.nt_con }"></c:out></div>
	</div>
<!-- footer -->
</div>
<jsp:include page="../include/footer.jsp"/>
<!-- footer end -->
</body>
</html>