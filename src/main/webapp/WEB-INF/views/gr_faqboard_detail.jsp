<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_faqboard_detail.jsp</title>
</head>
<body>
	<h2>gr_faqboard_detail.jsp</h2>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
		</tr>
		<tr>
			<td>${inform.f_title }</td>
			<td>${inform.ad_id }</td>
			<td>${inform.f_con }</td>
		</tr>
	</table>
	<a href="faqList"><input type="button" value="목록으로" /></a>
	<%-- <a href="updateFaq?f_title=${inform.f_title }"><input type="button" value="수정하기" /></a> --%>
	<a href="deleteFaq?f_title=${inform.f_title }"><input type="button" value="삭제하기" /></a>
</body>
</html>