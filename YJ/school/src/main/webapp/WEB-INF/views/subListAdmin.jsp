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
        .center {
            text-align: center;
            margin: 20px 0;
        }
        .btn-container {
			text-align: center;
							margin-top: 10px;
				            margin-left:30%;
        }
        .btn-container button {
            background-color: #8192a3;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            margin-right: 20px;
        }
        .btn-container button:hover {
            background-color: #0056b3;
        }
		
		.buttons-right {
		            text-align: center;
					margin-top: 10px;
		            margin-left:30%;
					
		        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <h2 style="text-align: center;">교과 목록</h2>
    <div class="btn-container">
        <a href="/addSubForm.do" style=""><button>교과 등록하기</button></a>
    </div>
    <table border="1">
        <tr style="text-align: center;">
            <th>교과명</th>
            <th>담당교사</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="subject" items="${subsList}">
            <tr>
                <td>${subject.sub_name}</td>
                <td>${subject.tc_name}</td>
                <td>
                    <form action="/deleteSub.do" method="post" onsubmit="return confirm('${subject.sub_name} 과목을 삭제하시겠습니까?');">
                        <input type="hidden" name="sub_no" value="${subject.sub_no}" />
                        <input type="submit" value="삭제" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
