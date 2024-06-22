<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>교과 등록</title>
</head>
<body>
    <h2>교과 등록</h2>
    <form action="/subject/addSub.do" method="post">
        <label for="sub_no">교과번호:</label>
        <input type="text" id="sub_no" name="sub_no" required><br>

        <label for="sub_name">교과명:</label>
        <input type="text" id="sub_name" name="sub_name" required><br>

        <label for="tc_name">담당교사명:</label>
        <input type="text" id="tc_name" name="tc_name" required><br>

        <input type="submit" value="등록">
    </form>
</body>
</html>
