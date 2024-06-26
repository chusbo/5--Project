<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>출석 조회</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	
    <h1><c:out value="${param.st_name}" /> 학생의 출석 조회</h1>
	
	<form action="attendanceList.do" method="get">
		<input type="hidden" id="stName" name="st_name" value="${param.st_name}">
	    <input type="hidden" id="stNo" name="st_no" value="${param.st_no}">
	    <label for="startDate">시작일자:</label>
	    <input type="date" id="startDate" name="startDate" required><br><br>
	    <label for="endDate">종료일자:</label>
	    <input type="date" id="endDate" name="endDate" required><br><br>
		<input type="submit" value="조회">
	</form>
	
	
    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
    <table border="1">
        <tr>
            <th>날짜</th>
            <th>출석현황</th>
        </tr>
        <c:forEach var="attendance" items="${attendanceList}">
            <tr>
                <td>${attendance.attendance_date}</td>
                <td>${attendance.attendance_status}</td>				
            </tr>
        </c:forEach>
    </table>
</body>
</html>
