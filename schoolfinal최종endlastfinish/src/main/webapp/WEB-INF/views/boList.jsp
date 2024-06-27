<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 50%;
        margin: 20px auto;
        background-color: #fff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
        color: #333;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:nth-child(odd) {
        background-color: #ffffff;
    }
</style>
<script>
    function truncateText() {
        var elements = document.querySelectorAll('.truncate-text');
        elements.forEach(function(element) {
            var maxLength = 40; // 최대 글자 수 설정
            var text = element.textContent.trim();
            if (text.length > maxLength) {
                element.textContent = text.slice(0, maxLength) + '...';
            }
        });
    }

    // 페이지 로드 후 호출
    document.addEventListener('DOMContentLoaded', function() {
        truncateText();
    });
</script>
</head>
<body> 
	<jsp:include page="header.jsp" />
<br>
<div>
    <h1>공지사항</h1>
    <br>
    <c:if test="${not empty message}">
        <div>${message}</div>
    </c:if>

    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>작성일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="board" items="${boardList}">
                <tr>
                    <td>${board.board_no}</td>
                    <td><a href="${contextPath}/boListView.do/${board.board_no}" class="text-decoration-none">${board.title}</a></td>
                     <td class="truncate-text">${board.article}</td>
                    <td>${board.cre_date}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>  
</body>
</html>
