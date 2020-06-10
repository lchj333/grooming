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
	<h2>bookmark</h2>
	
	<table>
		<tr>
			<th>회원 금액</th>
		</tr>
		<c:forEach items="${olist }" var="o">
			<tr>
				<td>${o.de_point }</td>
				<td>${o.de_licencenum }</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>