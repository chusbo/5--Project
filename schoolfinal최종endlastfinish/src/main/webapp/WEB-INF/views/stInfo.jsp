<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 상세 정보</title>
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
		.buttons-right {
		            text-align: center;
					margin-top: 10px;
		            margin-left:30%;
		        }
	</style>    
	<script>
	function deleteStudent(url) {
	    if (confirm('정말 삭제 하시겠습니까?')) {
	        window.location.href = url;
	    }
	}
	</script>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h1>학생 상세 정보</h1>
	<div style="text-align:center;">
		<img src="../img/img.png" width="150px;">
	</div>
	<div class="buttons-right">
	        <a href="${contextPath}/stGrade.do?stNo=${student.st_no}"><input type="button" value="성적조회"></a>
	        <form action="${contextPath}/attendanceForm.do" method="get" style="display:inline;">
	            <input type="hidden" id="stNo" name="st_no" value="${student.st_no}">
	            <input type="hidden" id="stName" name="st_name" value="${student.st_name}">
	            <input type="submit" value="출석조회">
	        </form>
	    </div>
    <table>
        <tr>
            <th>학생번호</th>
            <td>${student.st_no}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${student.st_name}</td>
        </tr>
        <tr>
            <th>생년월일</th>
            <td>${student.st_birth}</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>${student.st_gender}</td>
        </tr>
        <tr>
            <th>주소</th>
            <td>${student.st_addr}</td>
        </tr>
		<tr>
		    <th>휴대폰 번호</th>
		    <td>${student.st_phone}</td>
		</tr>
		<tr>
		    <th>학부모 전화번호</th>
		    <td>${student.st_parent_phone}</td>
		</tr>
		<tr>
		    <th>학년</th>
		    <td>${student.st_grade}</td>
		</tr>
		<tr>
		    <th>담임교사</th>
		    <td>${student.tc_name}</td>
		</tr>
    </table>
	<div style="text-align:center;">
	    <a href="${contextPath}/stMod.do?stNo=${student.st_no}"><input type="button" value="수정하기"></a>
		<button onclick="deleteStudent('${contextPath}/DeleteStudent.do?stNo=${student.st_no}');">삭제하기</button>
	</div>
</body>
</html>