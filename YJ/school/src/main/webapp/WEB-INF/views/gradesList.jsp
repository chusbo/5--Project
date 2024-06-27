<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	
    <title>학년별 과목 평균</title>
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

    <h2 style="text-align: center;">학년별 과목 평균</h2>
    <form action="/grades.do" method="get" style="text-align: center;">
        <label for="semester" ></label>
        <select id="semester" name="semester" onchange="this.form.submit()">
            <option value="1학년1학기" ${param.semester == '1학년1학기' ? 'selected' : ''}>1학년 1학기</option>
            <option value="1학년2학기" ${param.semester == '1학년2학기' ? 'selected' : ''}>1학년 2학기</option>
            <option value="2학년1학기" ${param.semester == '2학년1학기' ? 'selected' : ''}>2학년 1학기</option>
            <option value="2학년2학기" ${param.semester == '2학년2학기' ? 'selected' : ''}>2학년 2학기</option>
            <option value="3학년1학기" ${param.semester == '3학년1학기' ? 'selected' : ''}>3학년 1학기</option>
            <option value="3학년2학기" ${param.semester == '3학년2학기' ? 'selected' : ''}>3학년 2학기</option>
        </select>
    </form>
    <table border="1">
        <tr>
            <th>학년</th>
            <th>국어</th>
            <th>영어</th>
            <th>수학</th>
            <th>과학</th>
            <th>체육</th>
            <th>음악</th>
            <th>역사</th>
            <th>도덕</th>
            <th>미술</th>
            <th>사회</th>
            <th>정보</th>
            <th>기술가정</th>
        </tr>
        <c:forEach var="gradeEntry" items="${gradesList}">
            <tr>
                <td>${gradeEntry.key}</td>
                <td><c:out value="${gradeEntry.value['국어']}" /></td>
                <td><c:out value="${gradeEntry.value['영어']}" /></td>
                <td><c:out value="${gradeEntry.value['수학']}" /></td>
                <td><c:out value="${gradeEntry.value['과학']}" /></td>
                <td><c:out value="${gradeEntry.value['체육']}" /></td>
                <td><c:out value="${gradeEntry.value['음악']}" /></td>
                <td><c:out value="${gradeEntry.value['역사']}" /></td>
                <td><c:out value="${gradeEntry.value['도덕']}" /></td>
                <td><c:out value="${gradeEntry.value['미술']}" /></td>
                <td><c:out value="${gradeEntry.value['사회']}" /></td>
                <td><c:out value="${gradeEntry.value['정보']}" /></td>
                <td><c:out value="${gradeEntry.value['기술가정']}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>


