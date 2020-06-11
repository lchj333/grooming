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
	
	<h2>payedList</h2>
	<table>
		<tr>
			<th>아이디</th>
			<th>날짜</th>
			<th>포인트</th>
		</tr>
		
		<c:forEach items="${plist }" var="p">
			<tr>
				<td>${p.de_licencenum }</td>
				<td>${p.pay_date }</td>
				<td>${p.pay_money }</td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>