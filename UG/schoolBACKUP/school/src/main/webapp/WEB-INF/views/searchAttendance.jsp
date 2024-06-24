<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Search</title>
</head>
<body>
    <form action="searchAttendance.do" method="get">
        <label for="st_no">Student ID:</label>
        <input type="text" id="st_no" name="st_no" required><br><br>
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" required><br><br>
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required><br><br>
        <input type="submit" value="Search">
    </form>
</body>
</html>
