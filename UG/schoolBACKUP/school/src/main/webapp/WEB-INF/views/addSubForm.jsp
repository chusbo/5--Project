<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 등록</title>
</head>
<body>
    <h2>교과 등록</h2>
    <form action="/addSub.do" method="post">
        <label for="sub_no">과목 번호:</label>
        <input type="text" id="sub_no" name="sub_no" required /><br />
        <label for="sub_name">과목명:</label>
        <input type="text" id="sub_name" name="sub_name" required /><br />
        <input type="submit" value="등록하기" />
    </form>
</body>
</html>
