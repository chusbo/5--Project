<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	String sessionId=(String)session.getAttribute("sessionId");
%>	
<!DOCTYPE html>
<html>
<head>
    <%-- 부트스트랩 사용을 위한 필수 파일 --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	
    <title>메인 페이지</title>
    <style>
        .inline-block {
            display: inline-block;
            margin-right: 10px; /* 요소들 사이의 간격 조절을 위한 마진 */
        }
    </style>
</head>
<body> 
    <jsp:include page="header.jsp" />

    <div style="--bs-gap: .25rem 1rem;">
        <div class="grid text-left">
            <h4>공지사항</h4>
            <a href="${contextPath}/boListView.do/${board.board_no}" class="text-decoration-none">${board.title}</a>
        	
		</div>
		<div class="container text-center">	
	        <div class="inline-block text-senter">
	            <a href="${contextPath}/main.do" class="nav-link">
	                <img src="/img/student.jpg" alt="student">
	                <h4>학생정보</h4>
	            </a>
	        </div>
	
	        <div class="inline-block">
	            <a href="${contextPath}/main.do" class="nav-link">    
	                <img src="/img/teacher.jpg" alt="teacher">
	                <h4>교사정보</h4>
	            </a>
	        </div>
	
	        <div class="inline-block">
	            <a href="${contextPath}/searchSubjects.do" class="nav-link">
	                <img src="/img/subject.jpg" alt="subject">
	                <h4>교과정보</h4>
	            </a>
	        </div>
		</div>
</div>
</body>
</html>
