<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String schoolVO = (String) session.getAttribute("schoolVO");
%>
<!DOCTYPE html>
<html>
<head>
    <%-- 부트스트랩 사용을 위한 필수 파일 --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <meta charset="UTF-8">
    <title>상단 메뉴 페이지</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffffff; /* 배경을 흰색으로 변경 */
            margin: 0;
            padding: 0;
        }
        nav {
            background-color: #6c757d; /* 은색 톤의 네비게이션 바 */
            padding: 10px 20px;
        }
        nav .nav-link {
            color: white;
            font-size: 20px;
        }
        nav .nav-link:hover {
            color: #ffffff;
        }
        .container-fluid {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .container-fluid .nav-link {
            font-size: 40px;
        }
        .image-container {
            display: flex;
            align-items: center;
            color: white;
        }
        .image-container span {
            margin-right: 15px;
            font-size: 18px;
        }
        .image-container a {
            color: white;
            margin-left: 15px;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            
        }
        .image-container a:hover {
            background-color: #495057; /* 호버 시 약간 더 어두운 배경 */
        }
        .nav-pills .nav-item {
            position: relative;
            margin: 0 10px;
        }
        .nav-pills .nav-link {
            color: #6c757d; /* 은색 톤의 링크 */
            font-size: 20px;
        }
        .nav-pills .nav-link:hover {
            background-color: #6c757d; /* 은색 톤의 배경 */
            color: white;
        }
        .submenu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: white;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            min-width: 200px;
            padding: 0;
            list-style: none; /* 리스트 스타일 제거 */
        }
        .submenu a {
            color: #333;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .submenu a:hover {
            background-color: #f1f1f1;
        }
        .nav-item:hover .submenu {
            display: block;
        }
    </style>
</head>
<body>
<%-- 네비게이션 바 --%>
<nav class="navbar navbar-expand-lg navbar-light py-20">
    <div class="container-fluid d-flex align-items-center">
        <%-- 로고 및 타이틀 --%>
        <div class="d-flex align-items-center me-auto">
			<a href="${contextPath}/main.do" class="nav-link">
                <span style="margin-left:10px;font-size:40px;">학생 관리 프로그램</span>
            </a>
        </div>
        <div class="ms-3 image-container">
            <span>${school.user_id}님</span>
            <a class="imc d-flex flex-column align-items-center" href="${contextPath }/logout.do">
                <span>로그아웃</span>
            </a>
            <a class="imc d-flex flex-column align-items-center" href="${contextPath }/myPage.do?user_id=${school.user_id}">
                <span>마이페이지</span>
            </a>
        </div>
    </div>
</nav>
<ul class="nav nav-pills">
	
	<!-- 공지사항 -->
    <li class="ni nav-item">    
		<c:choose>			
			<c:when test="${school.user_id eq 'admin'}">
				<a href="${contextPath}/adminBoList.do" class="nav-link"><h4>공지사항</h4></a>
			</c:when>
			<c:otherwise>
				<a href="${contextPath}/boList.do" class="nav-link"><h4>공지사항</h4></a>		
			</c:otherwise>			
		</c:choose>
		<ul class="submenu">
			<!-- 관리자와 일반 사용자 구분라인 -->
			<c:choose>			
				<c:when test="${school.user_id eq 'admin'}">
					<li><a href="${contextPath}/adminBoList.do" class="nav-link">공지사항</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${contextPath}/boList.do" class="nav-link">공지사항</a></li>
				</c:otherwise>			
			</c:choose>
		</ul>
    </li>
	
	<!-- 학생정보 -->
    <li class="ni nav-item">
        <a href="${contextPath}/stList.do" class="nav-link"><h4>학생정보</h4></a>
        <ul class="submenu">
			<li><a href="${contextPath}/stList.do">학생정보</a><hr></li>
			<li><a href="${contextPath}/stAddForm.do">새 학생 등록</a><hr></li>
			<li><a href="${contextPath}/grades.do">학년 별 과목 평균</a><hr></li>
			<li><a href="${contextPath}/ranks.do">전교 석차</a></li>
        </ul>
    </li>
	
	<!-- 교사정보 -->
    <li class="ni nav-item">
        <c:choose>			
			<c:when test="${school.user_id eq 'admin'}">
				<a href="${contextPath}/adminTcList.do" class="nav-link"><h4>교사정보</h4></a>
			</c:when>
			<c:otherwise>
				<a href="${contextPath}/tcList.do" class="nav-link"><h4>교사정보</h4></a>
			</c:otherwise>			
		</c:choose>				
        
		<ul class="submenu">
			<!-- 관리자와 일반 사용자 구분라인 -->
			<c:choose>			
				<c:when test="${school.user_id eq 'admin'}">
					<li><a href="${contextPath}/adminTcList.do">교사정보</a><hr></li>
				</c:when>
				<c:otherwise>
					<li><a href="${contextPath}/tcList.do">교사정보</a><hr></li>	
				</c:otherwise>			
			</c:choose>
			<li><a href="${contextPath}/insertSubjectGrades.do">성적 입력</a></li>           
            
			<!-- 관리자용 -->
			<c:if test="${school.user_id eq 'admin'}">
				<hr>
			    <li><a href="${contextPath}/tcAddForm.do">신규 교사 등록</a></li>
			</c:if>
        </ul>
    </li>
	
	<!-- 교과정보 -->
    <li class="ni nav-item">
		<c:choose>			
			<c:when test="${school.user_id eq 'admin'}">
				<a href="${contextPath}/listSubjects.do" class="nav-link"><h4>교과정보</h4></a>
			</c:when>
			<c:otherwise>
				<a href="${contextPath}/searchSubjects.do" class="nav-link"><h4>교과정보</h4></a>		
			</c:otherwise>			
		</c:choose>
		<ul class="submenu">
			<!-- 관리자와 일반 사용자 구분라인 -->
			<c:choose>			
				<c:when test="${school.user_id eq 'admin'}">
					<a href="${contextPath}/listSubjects.do" class="nav-link">교과정보</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${contextPath}/searchSubjects.do" class="nav-link">교과정보</a></li>
				</c:otherwise>			
			</c:choose>
		</ul>	
    </li>
</ul>


</body>
</html>
