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
        border: 3px solid gray;
        border-radius: 30px;
        margin: auto;
        padding: 15px;
    }
    .bo{
        padding: 15px;
    }
    .notice-item {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 10px;
    }
    .notice-item a {
        text-decoration: none;
        color: #000;
    }
    .notice-item a:hover {
        text-decoration: underline;
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
                <div class="notice-item">
                    <a href="${contextPath}/boListView.do/${mainBoList.board_no}">${mainBoList.title}</a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>  
</body>
</html>
