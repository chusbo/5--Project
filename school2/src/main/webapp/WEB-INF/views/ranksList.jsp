<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>학년별 석차</title>
    <style>
        .grade-table {
            display: inline-block;
            margin-right: 20px;
            vertical-align: top;
        }
        table {
            border-collapse: collapse;
            width: 200px;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %>
    <h2>학년별 석차</h2>
    <c:forEach var="grade" items="${groupedData}">
        <div class="grade-table">
            <h3>${grade.key}학년</h3>
            <table>
                <thead>
                    <tr>
                        <th>석차</th>
                        <th>이름</th>
                        <th>평균 점수</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="rankEntry" items="${grade.value}">
                        <tr>
                            <td>${rankEntry.rank}</td>
                            <td>${rankEntry.name}</td>
                            <td>${rankEntry.avg_score}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:forEach>
</body>
</html>
