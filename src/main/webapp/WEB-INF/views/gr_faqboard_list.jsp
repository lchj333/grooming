<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_faqboard_list</title>
</head>
<body>
	<h2>gr_faqboard_list</h2>
	<table>
		<tr>
			<th>자주묻는 공지제목</th>
			<!-- <th>작성자</th>
			<th>내용</th> -->
		</tr>
		<c:forEach var="inform" items="${list }">
		<tr>
			<td><a href="faqDetail?f_title=${inform.f_title }">${inform.f_title }</a></td>
			<%-- <td>${inform.ad_id }</td>
			<td>${inform.f_con }</td> --%>
		</tr>
		</c:forEach>
	</table>
	<form action="insertFaq" method="get"><input type="submit" value="자주묻는질문작성" /></form>
</body>
</html>