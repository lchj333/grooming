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
	<form action="noticeInsert" method="get"><input type="submit" value="공지작성" /></form>
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
			<td><a href="noticeDetail?nt_no=${a.nt_no }&num=${pn}">${a.nt_title }</a></td>
			<%-- <td>${a.ad_id }</td> --%>
			<td>${a.nt_con }</td>
			<%-- <td>${a.nt_hits }</td>
			<td>${a.nt_regdate }</td> --%>
		</tr>
		</c:forEach>
	</table>
	<div>
		<!-- [이전] 나오게 하는 부분 -->
		<c:if test="${prev}">
			<span>[ <a href="/control/noticeListPage?num=${startPageNum - 1}">이전</a> ]</span>
		</c:if>
		
		<!-- 페이지 모음 출력 -->
		<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
			<span>
				<!-- 현재보고있는 페이지 글자 두껍게해서 직관성 향상-->
				<c:if test="${select != num }">
					<a href="/control/noticeListPage?num=${num}">${num}</a>									
				</c:if>
				<c:if test="${select == num }">
					<b>${num }</b>
				</c:if>
			</span>
		</c:forEach>
					
		<c:if test="${next}">
			<span>[ <a href="/control/noticeListPage?num=${endPageNum + 1}">다음</a> ]</span>
		</c:if>
		<%-- <c:forEach begin="1" end="${pageNum}" var="num">
			<span><a href="/control/noticeListPage?num=${num}">${num}</a></span>
		</c:forEach> --%>
	</div>
</body>
</html>