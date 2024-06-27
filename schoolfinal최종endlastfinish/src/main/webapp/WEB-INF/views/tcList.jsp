<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>선생 목록 조회</title>
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
    <h1>선생 목록 조회</h1>
    <table>
        <thead>
            <tr style="text-align: center;">
                <th>이름</th>
                <th>과목</th>
                <th>성별</th>
                <th>휴대폰 번호</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="tc" items="${tcList}">
            <tr>
				<td><a href="<c:url value='/tcInfo.do'/>?tcNo=${tc.tc_no}" style="text-decoration:none;">${tc.tc_name}</a></td>
                <td>${tc.sub_name}</td>
                <td>${tc.tc_gender}</td>
                <td>${tc.tc_phone}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>