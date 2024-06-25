<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
    <title>출석 조회</title>
</head>
<body>
    <h1><c:out value="${param.st_name}" /> 학생의 출석 조회</h1>
	
	<form action="attendanceList.do" method="get">
		<input type="hidden" id="stName" name="st_name" value="${param.st_name}">
	    <input type="hidden" id="stNo" name="st_no" value="${param.st_no}">
	    <label for="startDate">시작일자:</label>
	    <input type="date" id="startDate" name="startDate" required><br><br>
	    <label for="endDate">종료일자:</label>
	    <input type="date" id="endDate" name="endDate" required><br><br>
		<input type="submit" value="조회">
	</form>
	
	
    <c:if test="${not empty errorMessage}">
        <p style="color: red;">${errorMessage}</p>
    </c:if>
    <table border="1">
        <tr>
            <th>날짜</th>
            <th>비고</th>
			<th>상태</th>
        </tr>
        <c:forEach var="attendance" items="${attendanceList}">
            <tr>
                <td>${attendance.attendance_date}</td>
                <td>${attendance.attendance_status}</td>
				<td>
				    <button type="button" onclick="editAttendance('${attendance.attendance_no}', '${attendance.attendance_status}')">수정</button>
				</td>
            </tr>
        </c:forEach>
    </table>
	
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
