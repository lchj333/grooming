<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_noticeboard_detail.jsp</title>
</head>
<body>
	<h2>gr_noticeboard_detail.jsp</h2>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>조회수</th>
			<th>작성일자</th>
		</tr>
		<tr>
			<td>${inform.nt_no }</td>
			<td>${inform.nt_title }</td>
			<td>${inform.ad_id }</td>
			<td>${inform.nt_con }</td>
			<td>${inform.nt_hits }</td>
			<td>${inform.nt_regdate }</td>
		</tr>
	</table>
	<a href="noticeList"><input type="button" value="목록으로" /></a>		
</body>
</html>