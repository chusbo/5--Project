<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>출석부</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .center-align {
            text-align: center;
            margin: 20px 0;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        input[type="date"], input[type="submit"] {
            padding: 5px;
            margin: 5px 0;
        }
    </style>
    <script type="text/javascript">
        function editAttendance(attendanceNo, currentStatus, tcNo, attendanceDate) {
            var validStatuses = ['출석', '지각', '조퇴', '결석'];
            var newStatus = prompt("출결 변경 ('출석', '지각', '조퇴', '결석'):", currentStatus);
            if (newStatus != null && validStatuses.includes(newStatus)) {
                document.getElementById('attendanceNo').value = attendanceNo;
                document.getElementById('newStatus').value = newStatus;
                document.getElementById('editTcNo').value = tcNo;
                document.getElementById('editAttendanceDate').value = attendanceDate;
                document.getElementById('editForm').submit();
            } else {
                alert("유효한 출결 상태를 입력하세요 ('출석', '지각', '조퇴', '결석').");
            }
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <h1 class="center-align">출석부</h1>
    <div class="center-align">
        <h3>담임선생님: ${tcName.tc_name}</h3>
        <form action="${contextPath}/attendance.do" method="get">
            <input type="hidden" name="tcNo" value="${tcNo}">
            <label for="attendanceDate">날짜:</label>
            <input type="date" id="attendanceDate" name="attendanceDate" value="${attendanceDate != null ? attendanceDate : ''}">
            <input type="submit" value="조회">
        </form>
    </div>

    <form action="${contextPath}/attendanceUpdate.do" method="post">
        <input type="hidden" name="tcNo" value="${tcNo}">
        <input type="hidden" id="endDate" name="endDate" value="${attendanceDate != null ? attendanceDate : ''}" required><br><br>
        <input type="submit" value="모두 출석">
    </form>

    <table>
        <thead>
            <tr>
                <th>학생 번호</th>
                <th>학생 이름</th>
                <th>학년</th>
                <th>출석 날짜</th>
                <th>출석 상태</th>
                <th>변경</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="attendance" items="${attendanceList}">
            <tr>
                <td>${attendance.st_no}</td>
                <td>${attendance.st_name}</td>
                <td>${attendance.st_grade}</td>
                <td>${attendance.attendance_date}</td>
                <td>${attendance.attendance_status}</td>
                <td>
                    <button type="button" onclick="editAttendance('${attendance.attendance_no}', '${attendance.attendance_status}', '${tcNo}', '${attendance.attendance_date}')">수정</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>    
    
    <form id="editForm" action="${contextPath}/updateAttendance.do" method="post" style="display:none;">
        <input type="hidden" id="attendanceNo" name="attendanceNo">
        <input type="hidden" id="newStatus" name="newStatus">
        <input type="hidden" id="editTcNo" name="tcNo" value="${tcNo}">
        <input type="hidden" id="editAttendanceDate" name="attendanceDate" value="${attendanceDate}">
    </form>
</body>
</html>
