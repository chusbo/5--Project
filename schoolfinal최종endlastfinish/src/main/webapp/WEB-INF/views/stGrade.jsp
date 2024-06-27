<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>성적 정보</title>
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
		<c:if test="${not empty listGrade}">
		    <h1>${listGrade[0].st_name} 학생 성적 정보</h1>
		</c:if>
    <table>
        <thead>
            <tr>
				<th>학년-학기</th>
                <th>과목</th>
                <th>성적</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="grade" items="${listGrade}">
            <tr>
				<td>${grade.semester}</td>
                <td>${grade.sub_name}</td>
                <td>${grade.score}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
	<div style="text-align:center;">
	    <a href="${contextPath}/stInfo.do?stNo=${listGrade[0].st_no}"><input type="button" value="돌아가기"></a>
	</div>
</body>
</html>
