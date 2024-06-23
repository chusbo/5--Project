<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>학년별 과목 평균</title>
</head>
<body>
    <h2>학년별 과목 평균</h2>
    <form action="/grades.do" method="get">
        <label for="semester">학년&학기 선택:</label>
        <select id="semester" name="semester" onchange="this.form.submit()">
            <option value="1-1" ${param.semester == '1-1' ? 'selected' : ''}>1학년 1학기</option>
            <option value="1-2" ${param.semester == '1-2' ? 'selected' : ''}>1학년 2학기</option>
            <option value="2-1" ${param.semester == '2-1' ? 'selected' : ''}>2학년 1학기</option>
            <option value="2-2" ${param.semester == '2-2' ? 'selected' : ''}>2학년 2학기</option>
            <option value="3-1" ${param.semester == '3-1' ? 'selected' : ''}>3학년 1학기</option>
            <option value="3-2" ${param.semester == '3-2' ? 'selected' : ''}>3학년 2학기</option>
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
                <td>${gradeEntry.key}학년</td>
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
