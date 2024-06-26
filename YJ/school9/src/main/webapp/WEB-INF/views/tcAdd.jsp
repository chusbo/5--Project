<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>신규 선생님 등록</title>
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
	        width: 80%;
	        border-collapse: collapse;
	        margin: 20px auto;
	        background-color: #fff;
	        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
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
	    function Check() {
	        var tc_no = document.getElementById("tc_no");
	        var tc_name = document.getElementById("tc_name");
	        var tc_phone = document.getElementById("tc_phone");
	        var sub_no = document.getElementById("sub_no");
	        var user_id = document.getElementById("user_id");

	        // 번호 검사: tc + 숫자3개
	        var tcNoPattern = /^tc\d{3}$/;
	        if (!tcNoPattern.test(tc_no.value.trim())) {
	            alert('번호를 tc 다음에 숫자 3개로 입력해주세요. 예: tc123');
	            tc_no.focus();
	            return false;
	        }

	        // 이름 검사: 한글과 영문만
	        var namePattern = /^[가-힣a-zA-Z]+$/;
	        if (!namePattern.test(tc_name.value.trim())) {
	            alert('이름을 한글 또는 영문으로만 입력해주세요.');
	            tc_name.focus();
	            return false;
	        }

	        // 전화번호 검사: 숫자3개-숫자4개-숫자4개
	        var phonePattern = /^\d{3}-\d{4}-\d{4}$/;
	        if (!phonePattern.test(tc_phone.value.trim())) {
	            alert('전화번호를 숫자 3개-숫자 4개-숫자 4개 형식으로 입력해주세요. 예: 010-1234-5678');
	            tc_phone.focus();
	            return false;
	        }

	        // 과목 검사: sub + 숫자3개
	        var subNoPattern = /^sub\d{3}$/;
	        if (!subNoPattern.test(sub_no.value.trim())) {
	            alert('과목을 sub 다음에 숫자 3개로 입력해주세요. 예: sub123');
	            sub_no.focus();
	            return false;
	        }

	        // 아이디 검사: 영문 또는 영문 숫자
	        var userIdPattern = /^[a-zA-Z0-9]+$/;
	        if (!userIdPattern.test(user_id.value.trim())) {
	            alert('아이디는 영문 또는 영문 숫자로 입력해주세요.');
	            user_id.focus();
	            return false;
	        }

	        
	        return true;
	    }
	</script>
</head>
<body>
	<jsp:include page="header.jsp" />
    
	<form method="post" name="update" action="${contextPath}/tcAdd.do" onsubmit="return Check()">
	    <h1 class="text_center">신규 교사 등록</h1>
	    <table align="center">
	        <tr>
	            <td width="100"><p align="right">번호</p></td>
	            <td width="200"><input type="text" name="tc_no" id="tc_no" required pattern="tc\d{3}" title="tc 다음에 숫자 3개를 입력해주세요. 예: tc123"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">이름</p></td>
	            <td width="200"><input type="text" name="tc_name" id="tc_name" required pattern="[가-힣a-zA-Z]+" title="한글 또는 영문으로만 입력해주세요."></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">생년월일</p></td>
	            <td width="200"><input type="date" name="tc_birth" id="tc_birth"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">성별</p></td>
	            <td width="200">
	                <select name="tc_gender" id="tc_gender">
	                    <option value="남성">남성</option>
	                    <option value="여성">여성</option>
	                </select>
	            </td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">주소</p></td>
	            <td width="200"><input type="text" name="tc_addr" id="tc_addr"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">전화번호</p></td>
	            <td width="200"><input type="text" name="tc_phone" id="tc_phone" required pattern="\d{3}-\d{4}-\d{4}" title="숫자 3개-숫자 4개-숫자 4개 형식으로 입력해주세요. 예: 010-1234-5678"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">입사일</p></td>
	            <td width="200"><input type="date" name="tc_hired" id="tc_hired"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">과목</p></td>
	            <td width="200"><input type="text" name="sub_no" id="sub_no" required pattern="sub\d{3}" title="sub 다음에 숫자 3개를 입력해주세요. 예: sub123"></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">아이디</p></td>
	            <td width="200"><input type="text" name="user_id" id="user_id" required pattern="[a-zA-Z0-9]+" title="영문 또는 영문 숫자로 입력해주세요."></td>
	        </tr>
	        <tr>
	            <td width="100"><p align="right">상태</p></td>
	            <td width="200"><input type="text" name="tc_status" id="tc_status"></td>
	        </tr>
	        <tr>
	            <td width="100"><p>&nbsp;</p></td>
	            <td width="200">
	                <input type="submit" value="가입하기"> 
	                <input type="reset" value="다시입력">
	            </td>
	        </tr>
	    </table>
	</form>
</body>
</html>