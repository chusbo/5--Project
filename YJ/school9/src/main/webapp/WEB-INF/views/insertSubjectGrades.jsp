<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>담당 과목 성적 입력</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
    <h2>담당 과목 성적 입력</h2>
	
    <form action="${contextPath}/insertSubjectGradesProcess.do" method="post">
        
		<label for="st_no">학생 번호:</label>
		<input type="text" id="st_no" name="st_no"><br><br>
				
        <label for="sub_no">과목 번호:</label>
        <select id="sub_no" name="sub_no">
            <option value="sub001">sub001</option>
            <option value="sub002">sub002</option>
            <option value="sub003">sub003</option>
            <option value="sub004">sub004</option>
            <option value="sub005">sub005</option>
            <option value="sub006">sub006</option>
            <option value="sub007">sub007</option>
            <option value="sub008">sub008</option>
            <option value="sub009">sub009</option>
            <option value="sub010">sub010</option>
            <option value="sub011">sub011</option>
            <option value="sub012">sub012</option>
        </select><br><br>
        
        <label for="semester">학년학기:</label>
        <select id="semester" name="semester">
            <option value="1학년 1학기">1학년 1학기</option>
            <option value="1학년 2학기">1학년 2학기</option>
            <option value="2학년 1학기">2학년 1학기</option>
            <option value="2학년 2학기">2학년 2학기</option>
            <option value="3학년 1학기">3학년 1학기</option>
            <option value="3학년 2학기">3학년 2학기</option>
        </select><br><br>
        
        <label for="score">점수:</label>
        <input type="text" id="score" name="score"><br><br>
        
        <input type="submit" value="제출">
    </form>
</body>
</html>
