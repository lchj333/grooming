<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_faqboard_insert.jsp</title>
</head>
<body>
	<h2>gr_faqboard_insert.jsp</h2>
	<form action="faqInsert" method="post">
		<table>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="f_title" id="" /></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" value="admin" disabled="disabled"/></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><input type="text" name="f_con" id="" /></td>
			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="공지사항 작성" />
				</td>
			</tr>	
	</table>
	</form>
</body>
</html>