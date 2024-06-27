<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>	
    <title>교과 목록</title>
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
	<%@ include file="header.jsp" %>
    <h2>교과 목록</h2>
        <table border="1">
        <tr>
            <th>교과명</th>
            <th>담당교사</th>
        </tr>
        <c:forEach var="subject" items="${subsList}">
            <tr>
                <td>${subject.sub_name}</td>
                <td>${subject.tc_name}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
