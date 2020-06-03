<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_noticeboard_list.jsp</title>
</head>
<body>
	<h2>gr_noticeboard_list.jsp</h2>
	<table>
		<tr>
			<!-- <th>글번호</th> -->
			<th>제목</th>
			<!-- <th>작성자</th> -->
			<th>내용</th>
			<!-- <th>조회수</th>
			<th>작성일자</th> -->
		</tr>
		<c:forEach var="a" items="${list }">
		<tr>
			<%-- <td>${a.nt_no }</td> --%>
			<td><a href="detail?nt_no=${a.nt_no }">${a.nt_title }</a></td>
			<%-- <td>${a.ad_id }</td> --%>
			<td>${a.nt_con }</td>
			<%-- <td>${a.nt_hits }</td>
			<td>${a.nt_regdate }</td> --%>
		</tr>
		</c:forEach>
	</table>
	<form action="insert" method="get"><input type="submit" value="공지작성" /></form>
</body>
</html>