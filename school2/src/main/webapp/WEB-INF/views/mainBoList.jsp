<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>

</head>
<body> 
<div>
	<h1>공지 사항</h1>
	<br>
	<c:if test="${not empty message}">
	<div>${message}</div>
	</c:if>
	<c:forEach var="mainBoList" items="${mainBoList}">    
		<span>${mainBoList.board_no}</span>
		<span><a href="${contextPath}/boListView.do/${mainBoList.board_no}" class="text-decoration-none">${mainBoList.title}</a></span>
		<span>${mainBoList.cre_date}</span>	                
	</c:forEach>
</div>  
</body>
</html>
