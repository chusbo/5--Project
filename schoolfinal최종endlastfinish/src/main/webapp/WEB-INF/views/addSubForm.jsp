<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>교과 등록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .container {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
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
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
 
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container">
        <h2>교과 등록</h2>
        <form action="/addSub.do" method="post" onsubmit="return checkForm()">
            <label for="sub_no">과목 번호:</label>
            <input type="text" id="sub_no" name="sub_no" /><br />
            <label for="sub_name">과목명:</label>
            <input type="text" id="sub_name" name="sub_name" /><br />
            
        </form>
    </div>
	<div style="text-align:center">
	<input type="submit" value="등록하기" />
	</div>
</body>
</html>
