<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>회원 정보 출력창</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">	  	    
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	        	<a class="nav-link active" aria-current="page" href="#">공지사항</a>
	        </li>
	        <li class="nav-item">
	        	<a class="nav-link active" aria-current="page" href="#">학생정보</a>
	        </li>
	        <li class="nav-item">
	        	<a class="nav-link active" aria-current="page" href="#">교사정보</a>
	        </li>
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="#">교과정보</a>
			</li>
	      </ul>
		  <ul class="navbar-nav ms-auto">
			<c:choose>
			    <c:when test="${empty sessionId}">
			        <li class="nav-item">
				        <a class="nav-link active" aria-current="page" href="#">로그인</a>
			        </li>
			        <li class="nav-item">
				        <a class="nav-link active" aria-current="page" href="#">회원가입</a>
			        </li>
			    </c:when>
			    <c:otherwise>   
			        <li class="nav-item">
				        <a class="nav-link active" aria-current="page" href="#">마이페이지</a>
			        </li>
			        <li class="nav-item">
				        <a class="nav-link active" aria-current="page" href="#">로그아웃</a>
			        </li>	        
				</c:otherwise>
			</c:choose>
		  </ul>
	    </div>
	</nav>
</body>
</html>
