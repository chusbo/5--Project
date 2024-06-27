<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance List</title>
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
    <script type="text/javascript">
        function editAttendance(attendanceNo, currentStatus) {
            var validStatuses = ['출석', '지각', '조퇴', '결석'];
            var newStatus = prompt("출결 변경 ('출석', '지각', '조퇴', '결석'):", currentStatus);
            if (newStatus != null && validStatuses.includes(newStatus)) {
                document.getElementById('attendanceNo').value = attendanceNo;
                document.getElementById('newStatus').value = newStatus;
                document.getElementById('editForm').submit();
            } else {
                alert("유효한 출결 상태를 입력하세요 ('출석', '지각', '조퇴', '결석').");
            }
        }
    </script>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h1>Attendance List</h1>

    <form action="attendanceList.do" method="get">
        <label for="st_no">Student ID:</label>
        <input type="text" id="st_no" name="st_no" value="${param.st_no}" required><br><br>
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" value="${param.startDate}" required><br><br>
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" value="${param.endDate}" required><br><br>
        <input type="submit" value="Search">
    </form>

    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
    
    <c:if test="${not empty attendanceList}">
        <table border="1">
            <tr>
                <th>Student ID</th>
                <th>Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach var="attendance" items="${attendanceList}">
                <tr>
                    <td>${attendance.st_no}</td>
                    <td>${attendance.attendance_date}</td>
                    <td>${attendance.attendance_status}</td>
                    <td>
                        <button type="button" onclick="editAttendance('${attendance.attendance_no}', '${attendance.attendance_status}')">수정</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <form id="editForm" action="updateAttendance.do" method="post" style="display:none;">
        <input type="hidden" id="attendanceNo" name="attendanceNo">
        <input type="hidden" id="newStatus" name="newStatus">
        <!-- 검색 조건을 유지하기 위한 필드 추가 -->
        <input type="hidden" id="editStNo" name="st_no" value="${param.st_no}">
        <input type="hidden" id="editStartDate" name="startDate" value="${param.startDate}">
        <input type="hidden" id="editEndDate" name="endDate" value="${param.endDate}">
    </form>
</body>
</html>
