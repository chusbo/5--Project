<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>학년별 석차</title>
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
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .grade-table {
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            flex: 0 1 calc(33.33% - 20px);
            margin-bottom: 20px;
        }
        .grade-table h3 {
            background-color: #f2f2f2;
            margin: 0;
            padding: 10px;
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
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
        @media (max-width: 768px) {
            .grade-table {
                flex: 0 1 calc(50% - 20px);
            }
        }
        @media (max-width: 480px) {
            .grade-table {
                flex: 0 1 100%;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <h2 style="text-align: center;">학년별 석차</h2><br>
    <div class="container">
        <!-- 1학년 석차 -->
        <c:forEach var="grade" items="${groupedData}">
            <c:if test="${grade.key == '1학년'}">
                <div class="grade-table">
                    <h3>${grade.key}</h3>
                    <table>
                        <thead>
                            <tr style="text-align: center;">
                                <th>석차</th>
                                <th>이름</th>
                                <th>평균 점수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="rankEntry" items="${grade.value}">
                                <tr>
                                    <td>${rankEntry.rank_value}</td>
                                    <td>${rankEntry.name}</td>
                                    <td>${rankEntry.avg_score}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </c:forEach>
        
        <!-- 2학년 석차 -->
        <c:forEach var="grade" items="${groupedData}">
            <c:if test="${grade.key == '2학년'}">
                <div class="grade-table">
                    <h3>${grade.key}</h3>
                    <table>
                        <thead>
                            <tr style="text-align: center;">
                                <th>석차</th>
                                <th>이름</th>
                                <th>평균 점수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="rankEntry" items="${grade.value}">
                                <tr>
                                    <td>${rankEntry.rank_value}</td>
                                    <td>${rankEntry.name}</td>
                                    <td>${rankEntry.avg_score}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </c:forEach>
        
        <!-- 3학년 석차 -->
        <c:forEach var="grade" items="${groupedData}">
            <c:if test="${grade.key == '3학년'}">
                <div class="grade-table">
                    <h3>${grade.key}</h3>
                    <table>
                        <thead>
                            <tr style="text-align: center;">
                                <th>석차</th>
                                <th>이름</th>
                                <th>평균 점수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="rankEntry" items="${grade.value}">
                                <tr>
                                    <td>${rankEntry.rank_value}</td>
                                    <td>${rankEntry.name}</td>
                                    <td>${rankEntry.avg_score}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </c:forEach>
    </div>
</body>
</html>
