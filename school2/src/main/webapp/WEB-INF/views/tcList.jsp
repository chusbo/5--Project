<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>선생님 정보</title>
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
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
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
<!--    <a href="${contextPath}/tcAddForm.do">신규등록</a>-->
    <h1>선생님 정보</h1>
    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>생년월일</th>
                <th>성별</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="tc" items="${tcList}">
            <tr>
                <td><a href="<c:url value='/tcInfo.do'/>?tc_no=${tc.tc_no}">${tc.tc_name}</a></td>
                <td>${tc.tc_birth}</td>
                <td>${tc.tc_gender}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
