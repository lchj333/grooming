<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
      <div id="gr_noticeboard_detail_title"><span><c:out value="${inform.nt_title }"></c:out></span></div>
      <div id="gr_noticeboard_detail_datehits">
         <span>등록일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
         <span><fmt:formatDate value="${inform.nt_regdate }"/></span>
         <span>조회수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
         <span><c:out value="${inform.nt_hits }"></c:out></span>
      </div>
      <div id="gr_noticeboard_detail_contents"><c:out value="${inform.nt_con }"></c:out></div>      
	   <p id="notice_button">
		   <a href="noticeListPage?num=${pn }" class="btn_1 medium">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   <c:if test="${login.mb_id eq admin }"></c:if>
		   <a href="noticeUpdate?nt_no=${inform.nt_no }" class="btn_1 medium">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   <a href="noticeDelete?nt_no=${inform.nt_no }" class="btn_1 medium">삭제</a>
	   </p>
   </div>
<!-- footer -->
<jsp:include page="../include/footer.jsp"/>
</div>
<!-- footer end -->
</body>
</html>