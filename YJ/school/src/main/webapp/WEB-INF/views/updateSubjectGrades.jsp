<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 수정</title>
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
    <h2>성적 수정</h2>
    <form action="${contextPath}/modSubjectGrades.do" method="post">
        <input type="hidden" id="grade_no" name="grade_no" value="${grade.grade_no}">
        
        <label for="st_no">학생 번호:</label>
        <input type="text" id="st_no" name="st_no" value="${grade.st_no}"><br><br>
        
        <label for="sub_no">과목 번호:</label>
        <select id="sub_no" name="sub_no">
            <option value="sub001" ${grade.sub_no == 'sub001' ? 'selected' : ''}>sub001</option>
            <option value="sub002" ${grade.sub_no == 'sub002' ? 'selected' : ''}>sub002</option>
			<option value="sub003" ${grade.sub_no == 'sub003' ? 'selected' : ''}>sub003</option>
			<option value="sub004" ${grade.sub_no == 'sub004' ? 'selected' : ''}>sub004</option>
			<option value="sub005" ${grade.sub_no == 'sub005' ? 'selected' : ''}>sub005</option>
			<option value="sub006" ${grade.sub_no == 'sub006' ? 'selected' : ''}>sub006</option>
			<option value="sub007" ${grade.sub_no == 'sub007' ? 'selected' : ''}>sub007</option>
			<option value="sub008" ${grade.sub_no == 'sub008' ? 'selected' : ''}>sub008</option>
			<option value="sub009" ${grade.sub_no == 'sub009' ? 'selected' : ''}>sub009</option>
			<option value="sub010" ${grade.sub_no == 'sub010' ? 'selected' : ''}>sub010</option>
			<option value="sub011" ${grade.sub_no == 'sub011' ? 'selected' : ''}>sub011</option>
			<option value="sub012" ${grade.sub_no == 'sub012' ? 'selected' : ''}>sub012</option>
        </select><br><br>
        
        <label for="semester">학기:</label>
        <select id="semester" name="semester">
            <option value="1학년 1학기" ${grade.semester == '1학년 1학기' ? 'selected' : ''}>1학년 1학기</option>
            <option value="1학년 2학기" ${grade.semester == '1학년 2학기' ? 'selected' : ''}>1학년 2학기</option>
			<option value="2학년 1학기" ${grade.semester == '2학년 1학기' ? 'selected' : ''}>2학년 1학기</option>
			<option value="2학년 2학기" ${grade.semester == '2학년 2학기' ? 'selected' : ''}>2학년 2학기</option>
			<option value="3학년 1학기" ${grade.semester == '3학년 1학기' ? 'selected' : ''}>3학년 1학기</option>
			<option value="3학년 2학기" ${grade.semester == '3학년 2학기' ? 'selected' : ''}>3학년 2학기</option>
        </select><br><br>
        
        <label for="score">점수:</label>
        <input type="text" id="score" name="score" value="${grade.score}"><br><br>
        
        <input type="submit" value="수정">
    </form>
</body>
</html>
