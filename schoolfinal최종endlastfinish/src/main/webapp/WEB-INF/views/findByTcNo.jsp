<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>담임학급 학생 조회</title>
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
    <h1>학생 조회</h1>
	<c:if test="${empty findByTcNo}">
	    <div style="text-align:center;">
	        <h3>담임선생님: ${tcName.tc_name}</h3>
	        <p>담당학급이 없습니다.</p>
	    </div>
	</c:if>

	<c:if test="${not empty findByTcNo}">
	    <div style="text-align:center;">
	        <h3>담임선생님: ${tcName.tc_name}</h3>
	    </div>
	    <table>
	        <thead>
	            <tr style="text-align:center;">
	                <th>학생 번호</th>
	                <th>학생 이름</th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="st" items="${findByTcNo}">
	                <tr>
	                    <td>${st.st_no}</td>
	                    <td><a href="<c:url value='/stInfo.do'/>?stNo=${st.st_no}" style="text-decoration:none;">${st.st_name}</a></td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	</c:if>
</body>
</html>
