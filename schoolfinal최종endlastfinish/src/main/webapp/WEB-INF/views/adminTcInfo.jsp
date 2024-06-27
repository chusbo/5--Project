<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>교사 상세 정보 조회</title>
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
</head>
<body>
	<jsp:include page="header.jsp" />
    <h1>교사 상세 정보 조회</h1>
    <table>
        <tr>
            <th>번호</th>
            <td>${teacher.tc_no}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${teacher.tc_name}</td>
        </tr>
        <tr>
            <th>생년월일</th>
            <td>${teacher.tc_birth}</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>${teacher.tc_gender}</td>
        </tr>
        <tr>
            <th>주소</th>
            <td>${teacher.tc_addr}</td>
        </tr>
		<tr>
		    <th>전화번호</th>
		    <td>${teacher.tc_phone}</td>
		</tr>
		<tr>
		    <th>입사일</th>
		    <td>${teacher.tc_hired}</td>
		</tr>
		<tr>
		    <th>과목</th>
		    <td>${teacher.sub_name}</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${teacher.user_id}</td>
		</tr>
		<tr>
			<th>상태</th>
			<td>${teacher.tc_status}</td>
		</tr>
	<!-- 필요한 선생 정보 필드들을 추가하세요 -->
    </table>
	<div style="text-align:center;">
	<a href="<c:url value='/subjectGrades.do'/>?tcNo=${teacher.tc_no}"><input type="button" value="담당과목 성적조회"></a>
	<a href="<c:url value='/findByTcNo.do'/>?tcNo=${teacher.tc_no}"><input type="button" value="담임학급 학생 조회"></a>
	<a href=""><input type="button" value="삭제하기"></a>
	</div>
</body>
</html>