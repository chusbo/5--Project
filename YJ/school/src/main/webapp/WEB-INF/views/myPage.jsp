<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
        input[type="text"]
       {
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
    <%@ include file="header.jsp" %>
    <h2>내 정보</h2>
    <c:if test="${not empty updateMessage}">
        <p style="color:green;">${updateMessage}</p>
    </c:if>
	<div class="container">
    <form action="/updateUser.do" method="post" onsubmit="return checkForm()">
        <input type="hidden" name="user_id" value="${user.user_id}" />
        <label for="tc_name">이름</label>
        <input type="text" id="tc_name" name="tc_name" value="${user.tc_name}" disabled /><br />
        <input type="hidden" name="tc_name" value="${user.tc_name}" />
        
        <label for="tc_birth">생년월일</label>
        <input type="text" id="tc_birth" name="tc_birth" value="${user.tc_birth}" disabled /><br />
        <input type="hidden" name="tc_birth" value="${user.tc_birth}" />
        
        <label for="tc_phone">휴대폰 번호</label>
        <input type="text" id="tc_phone" name="tc_phone" value="${user.tc_phone}" /><br />
        
        <label for="tc_addr">주소</label>
        <input type="text" id="tc_addr" name="tc_addr" value="${user.tc_addr}" /><br />
        
        <label for="tc_hired">입사일</label>
        <input type="text" id="tc_hired" name="tc_hired" value="${user.tc_hired}" disabled /><br />
        <input type="hidden" name="tc_hired" value="${user.tc_hired}" />
		</div>
		<div style="text-align:center;">
        <input type="submit" value="수정하기" />
		</div>
    </form>

</body>
</html>
