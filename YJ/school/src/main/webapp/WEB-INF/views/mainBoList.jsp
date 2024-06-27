<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
	.mbo{
		width: 80%;
		height: 200px;
		border: 3px solid gray;
		border-radius: 30px;
		margin:auto;
	}
	.bo{
		padding:15px;
	}
</style>
</head>
<body> 
	<br>
<div>
	<c:if test="${not empty message}">
		<div>${message}</div>
	</c:if>
	<div class="mbo">
		<div class="bo">
			<h3>공지사항</h3>
			
			<c:forEach var="mainBoList" items="${mainBoList}"> 
				<a href="${contextPath}/boListView.do/${mainBoList.board_no}" class="text-decoration-none">${mainBoList.title}</a>
			</c:forEach>
		<div>
	</div>
</div>  
</body>
</html>
