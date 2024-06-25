<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String sessionId = (String) session.getAttribute("sessionId");
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

        .ni {
            position: relative; /* 부모 요소에 대해 상대적 위치 설정 */
        }

        .ni a {
            text-decoration: none;
            color: black;
        }

        .ni:hover .submenu {
            display: block;
        }

        .submenu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            z-index: 1000;
            min-width: 10rem;
            padding: 0.5rem 0;
            margin: 0.125rem 0 0;
            font-size: 1rem;
            color: #212529;
            text-align: left;
            list-style: none;
            background-color: #f2f2f2;
            background-clip: padding-box;
			border: solid 1px black;
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
            <a href="${contextPath}/main.do" class="hd">
                <span style="margin-left:10px;font-size:40px;">학생 관리 프로그램</span>
            </a>
        </div>

        <div class="ms-3 image-container">
			<span>${school.user_id}님</span>
			<a class="imc d-flex flex-column align-items-center" href="${contextPath }/logout.do">
		    	<span>로그아웃</span>
			</a>
			<a class="imc d-flex flex-column align-items-center" href="${contextPath }/myPage.do?user_id=???">
				<span>마이페이지</span>
			</a>
        </div>
    </div>
</nav>
<ul class="nav nav-pills">
    <li class="ni nav-item">
        <a href="${contextPath}/boList.do" class="nav-link"><h4>공지사항</h4></a>
    </li>
    <li class="ni nav-item">
        <a href="${contextPath}/stList.do" class="nav-link"><h4>학생정보</h4></a>
        <ul class="submenu">		      
			<li><a href="${contextPath}/stAddForm.do">새 학생 등록</a><hr></li>
			<li><a href="${contextPath}/grades.do">학년 별 과목 평균</a><hr></li>
			<li><a href="${contextPath}/ranks.do">전교 석차</a></li>
        </ul>
    </li>
    <li class="ni nav-item">
        <a href="${contextPath}/main.do" class="nav-link"><h4>교사정보</h4></a>
        <ul class="submenu">
			
            
            <li><a href="${contextPath}/adminBoList.do">교사 상세 정보 조회</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">담임학급 학생 조회</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">담당 과목 성적 조회</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">담당 과목 성적 입력</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">담당 과목 성적 수정</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">학급 출석부</a><hr></li>
            <li><a href="${contextPath}/adminBoList.do">학급 출석 입력</a></li>
        </ul>
    </li>
    <li class="ni nav-item">
		
        <a href="${contextPath}/searchSubjects.do" class="nav-link"><h4>교과정보</h4></a>
    </li>
</ul>


</body>
</html>
