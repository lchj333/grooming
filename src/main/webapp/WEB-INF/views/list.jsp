<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<h1>desiner</h1>
	<form action="selectPayForm" method="post">
	<table>
		<tr>
			<th>라이센스 넘버</th>
			<th>아이디</th>
			<th>자격증</th>
			<th>포인트</th>
		</tr>
	<c:forEach items="${list }" var="v">
		<tr>
			<td>${v.de_licencenum}</td>
			<td>${v.de_approval}</td>
			<td>${v.de_licence}</td>
			<td>${v.de_point}</td>
		</tr>
	</c:forEach>
	</table>
	<input type="text" name="licencenum" id="" />
	<input type="submit" value="번호로 찾기" />
	</form>
	<a href="insert"><input type="button" value="추가" /></a> 
</body>
</html>