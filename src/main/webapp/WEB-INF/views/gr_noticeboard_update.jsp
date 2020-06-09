<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gr_noticeboard_update.jsp</title>
</head>
<body>
	<h2>gr_noticeboard_update.jsp</h2>
	<form action="noticeUpdate?nt_no=${inform.nt_no }" method="post">
		<table>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="nt_title" id="" value="${inform.nt_title }" /></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" value="admin" disabled="disabled"/></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><input type="text" name="nt_con" id="" value="${inform.nt_con }" /></td>
			</tr>	
			<tr>
				<td colspan="2">
					<input type="submit" value="공지사항 수정" />
					<a href="noticeList"><input type="button" value="취소" /></a>
				</td>
			</tr>	
	</table>
	</form>
</body>
</html>