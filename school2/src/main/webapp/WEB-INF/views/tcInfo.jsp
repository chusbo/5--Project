<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>선생님 상세 정보</title>
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
	function deleteStudent(url) {
	    if (confirm('정말 삭제 하시겠습니까?')) {
	        window.location.href = url;
	    }
	}
	</script>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h1>선생님 상세 정보</h1>
	<div style="text-align:center;">
		<img src="../img/img.png" width="150px;">
	</div>
    <table>
        <tr>
            <th>번호</th>
            <td>${student.tc_no}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${student.tc_name}</td>
        </tr>
        <tr>
            <th>생년월일</th>
            <td>${student.tc_birth}</td>
        </tr>
        <tr>
            <th>성별</th>
            <td>${student.tc_gender}</td>
        </tr>
        <tr>
            <th>주소</th>
            <td>${student.tc_addr}</td>
        </tr>
		<tr>
		    <th>핸드폰번호</th>
		    <td>${student.tc_phone}</td>
		</tr>
		
<!--		<tr>-->
<!--		    <th>과목</th>-->
<!--		    <td>${student.tc_grade}</td>-->
<!--		</tr>-->
<!--		<tr>-->
<!--		    <th>상태</th>-->
<!--		    <td>${student.tc_no}</td>-->
<!--		</tr>-->
    </table>
<!--	<div style="text-align:center;">-->
<!--	    <a href="${contextPath}/stMod.do?stNo=${student.st_no}"><input type="button" value="수정하기"></a>-->
<!--		<button onclick="deleteStudent('${contextPath}/DeleteStudent.do?stNo=${student.st_no}');">삭제하기</button>-->
<!--		<a href="${contextPath}/stGrade.do?stNo=${student.st_no}"><input type="button" value="성적조회"></a>-->
<!--		<a href="${contextPath}/stList.do"><input type="button" value="돌아가기"></a>-->
<!--		<form action="${contextPath}/attendanceForm.do" method="get">-->
<!--		    <input type="hidden" id="stNo" name="stNo" value="${student.st_no}">-->
<!--		    <input type="hidden" id="stName" name="stName" value="${student.st_name}">-->
<!--		    <input type="submit" value="출결확인">-->
<!--		</form>-->
<!--	</div>-->

</body>
</html>