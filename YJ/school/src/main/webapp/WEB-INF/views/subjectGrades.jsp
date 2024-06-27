<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>담당과목 성적 조회</title>
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
	<script>
	    function modifyScore(gradeNo) {
	        var newScore = prompt("변경된 점수를 입력하세요:");
	        if (newScore !== null) {
	            var xhttp = new XMLHttpRequest();
	            xhttp.onreadystatechange = function() {
	                if (this.readyState == 4 && this.status == 200) {
	                    // 점수 업데이트 성공 시
	                    document.getElementById("score_" + gradeNo).innerText = newScore;
	                }
	            };
	            xhttp.open("POST", "${contextPath}/updateScore.do", true);
	            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	            xhttp.send("gradeNo=" + gradeNo + "&newScore=" + newScore);
	        }
	    }
	</script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <h1>담당과목 성적 조회</h1>

    

    <c:if test="${not empty subjectGrades}">
		<div class="center-align">
			<h3 style="text-align:center;">담임 교사: ${tcName.tc_name}</h3>
		</div>
        <table>
            <thead>
                <tr style="text-align:center;">
                    <th>학생</th>
                    <th>과목</th>
                    <th>학년 학기</th>
                    <th>점수</th>
					<th>수정</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${subjectGrades}" var="grade">
                    <tr>
                        <td>${grade.st_name}</td>
                        <td>${grade.sub_name}</td>
                        <td>${grade.semester}</td>
                        <td id="score_${grade.grade_no}">${grade.score}</td>
						<td><button onclick="modifyScore(${grade.grade_no})">수정</button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
