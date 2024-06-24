<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>공지사항 등록</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp" />
	<br>
    <div>        
        <h1>공지사항 등록</h1>

        <c:if test="${not empty message}">
            <div>${message}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/addBoard.do" method="post">
            
            <div>
                <label for="title">제목:</label>
                <input type="text" name="title" required>
            </div>
            
            <div>
                <label for="article">내용:</label>
                <textarea name="article" required></textarea>
            </div>
            
            <div>
                <button type="submit">등록하기</button>
            </div>
        </form>

        <a href="${pageContext.request.contextPath}/boList.do">공지 사항으로 돌아가기</a>
    </div>    
</body>
</html>
