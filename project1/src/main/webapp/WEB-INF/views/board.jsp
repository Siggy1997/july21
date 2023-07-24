<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Board</title>
<link rel="stylesheet" href="./resources/css/board.css">
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="icon" href="./img/favicon.ico" type="image/x-icon">
</head>
<body>
	<%@ include file="menu.jsp"%>
	<br>
	<br>
	<br>
	<div class="neon">Siggy Board</div>
	<br>
	<br>
	<br>
	<!-- 로그인 했다면 글쓰기 버튼이 보여요 -->

	<c:if test="${sessionScope.mname ne null }">
	<div class="hi">
		<a href="./write" style="text-decoration: none;"> 글쓰기</a>
	</div>
	</c:if>
	
	
	<c:choose>
		<c:when test="${fn:length(list) gt 0 }">
			
	<table class="wrapper1">
		<tr class="neonText">
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>좋아요</th>
		</tr>
		<c:forEach items="${list }" var="row">
			<!-- 	onclick 자바 스크립트 페이지 이동, URL?파라미터 = 값 -->
			<tr onclick="location.href='./detail?bno=${row.bno}'">
				<td class="neonText">${row.bno }</td>
				<td class="neonText">${row.btitle }</td>
				<td class="neonText">${row.m_name }</td>
				<td class="neonText">${row.bdate }</td>
				<td class="neonText">${row.blike }</td>
			</tr>
		</c:forEach>
	</table>
	
		</c:when>
		<c:otherwise>
		<div style="color: white">없음</div>
		</c:otherwise>
		
	</c:choose>
	
	
	
	<div class="neonText" style="text-align: center; font-size: xx-large;">
		<a href="./index" style="text-decoration: none;">BACK</a>
	</div>
</body>
</html>