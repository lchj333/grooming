<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>update</h1>
	<table>
		<tr>
			<th>라이센스 넘버</th>
			<th>아이디</th>
			<th>자격증</th>
			<th>포인트</th>
		</tr>
		
		<tr>
			<td>${pay.de_licencenum}</td>
			<td>${pay.de_approval}</td>
			<td>${pay.de_licence}</td>
			<td>${pay.de_point}</td>
		</tr>
		
	</table> 

</body>
</html>