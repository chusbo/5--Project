<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId=(String)session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<%-- 부트스트랩 사용을 위한 필수 파일 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
	
	
    .navbar {
        height: 100px; /* 원하는 높이로 조절하세요 */
		
    }
	
    .nav-link {
        font-size: 20px;
        
        text-decoration: none;
        color: black;
    }
    .hd {
        text-decoration: none;
        color: black;
        padding: 10;
    }
    .imc {
        text-decoration: none;
        color: black;
    }
    .image-container {
        display: flex;
        align-items: center;
        gap: 15px;
    }
</style>
<meta charset="UTF-8">
<title>상단 메뉴 페이지</title>
</head>
<body>
<%-- 네비게이션 바 --%>
<nav class="navbar navbar-expand-lg navbar-light py-20">
    <div class="container-fluid d-flex align-items-center">
        
        <%-- 로고 및 타이틀 --%>
        <div class="d-flex align-items-center me-auto">
        	<a href="main.jsp" class="hd">     	
            	<span style="margin-left:10px;font-size:40px;">학생 관리 프로그램</span>
            </a>
        </div>

        <div class="ms-3 image-container">	   
			<span>[<%=sessionId %>]일반사용자</span>
			<a class="imc d-flex flex-column align-items-center" href="#">
			     <span>로그아웃</span>
			 </a>
			 <a class="imc d-flex flex-column align-items-center" href="#">
			     <span>마이페이지</span>
			 </a>
        </div>
    </div>
</nav>
<ul class="nav nav-pills">
		<li class="nav-item"><a href="#" class="nav-link">공지사항</a></li>
		<li class="nav-item"><a href="#" class="nav-link">학생정보</a></li>
		<li class="nav-item"><a href="#" class="nav-link">교사정보</a></li>	
		<li class="nav-item"><a href="#" class="nav-link">교과정보</a></li>		
	</ul>


</body>
</html>