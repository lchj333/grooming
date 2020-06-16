<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main_resources/css/grooming_noticeboard_detail.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="page">
<!-- header -->
<jsp:include page="../include/header.jsp"/>
<!-- header end -->
<!-- contents -->
	<div id="gr_noticeboard_detail_maindiv">
		<div>
	      <div id="gr_noticeboard_detail_title"><span><c:out value="${inform.nt_title }"></c:out></span></div>
	      <div id="gr_noticeboard_detail_datehits">
	         <span>등록일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	         <span><fmt:formatDate value="${inform.nt_regdate }"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	         <span>조회수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	         <span><c:out value="${inform.nt_hits }"></c:out></span>
	      </div>
		</div>
		<div id="gr_noticeboard_detail_contents">
			<c:set var="a" value="${inform.nt_con }"/>
			<c:set var="b" value="${fn:replace(a,'<p>','')}"/>
			<c:set var="c" value="${fn:replace(b,'</p>','</br>')}"/>
			<c:set var="d" value="${fn:replace(c,'&nbsp;','
			')}"/>
			<c:set var="e" value="${fn:replace(d,'<br>','')}"/> 
			${e }
		</div> 
	   <p id="notice_button">
		   <a href="noticeListPage?num=${pn }" class="btn_1 medium">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   </p>
   </div>
<!-- footer -->
<jsp:include page="../include/footer.jsp"/>
</div>
<!-- footer end -->
</body>
</html>