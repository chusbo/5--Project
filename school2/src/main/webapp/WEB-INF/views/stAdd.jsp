<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>신규 학생 등록</title>
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
            var st_no = document.getElementById("st_no");
            var st_name = document.getElementById("st_name");
            var name = document.getElementById("name");
            var email = document.getElementById("email");

            if (st_no.value === '') {
                alert('학번을 입력해주세요.');
                st_no.focus();
                return false;
            }
			
			if (st_name.value === '') {
			    alert('이름을 입력해주세요.');
			    st_name.focus();
			    return false;
			}

            if (pwd.value.length < 4 || pwd.value.length > 10) {
                alert("[비밀번호]\n 최소 4자에서 최대 10자까지 입력하세요");
                pwd.focus();
                return false;
            }

            if (name.value.length < 1 || name.value.length > 10) {
                alert("[이름]\n 최소 1자에서 최대 10자까지 입력하세요");
                name.focus();
                return false;
            }

            if (email.value.indexOf('@') === -1 || email.value.indexOf('.') === -1) {
                alert("[이메일]\n 올바른 이메일 형식이 아닙니다.");
                email.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
	<jsp:include page="header.jsp" />
    <form method="post" name="update" action="${contextPath}/stAdd.do">
        <h1 class="text_center">신규 학생 등록</h1>
        <table align="center">
            <tr>
                <td width="100"><p align="right">학번</p></td>
                <td width="200"><input type="text" name="st_no" id="st_no"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">이름</p></td>
                <td width="200"><input type="text" name="st_name" id="st_name"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">생년월일</p></td>
                <td width="200"><input type="date" name="st_birth" id="st_birth"></td>
            </tr>
			<tr>
			    <td width="100"><p align="right">성별</p></td>
			    <td width="200">
			        <select name="st_gender" id="st_gender">
			            <option value="남성">남성</option>
			            <option value="여성">여성</option>
			        </select>
			    </td>
			</tr>
			<tr>
			    <td width="100"><p align="right">주소</p></td>
			    <td width="200"><input type="text" name="st_addr" id="st_addr"></td>
			</tr>
			<tr>
			    <td width="100"><p align="right">전화번호</p></td>
			    <td width="200"><input type="text" name="st_phone" id="st_phone"></td>
			</tr>
			<tr>
			    <td width="100"><p align="right">비상연락처(부모님)</p></td>
			    <td width="200"><input type="text" name="st_parent_phone" id="st_parent_phone"></td>
			</tr>
			<tr>
			    <td width="100"><p align="right">학년</p></td>
			    <td width="200"><input type="text" name="st_grade" id="st_grade"></td>
			</tr>
			<tr>
			    <td width="100"><p align="right">담임교사</p></td>
			    <td width="200"><input type="text" name="tc_no" id="tc_no"></td>
			</tr>
            <tr>
                <td width="100"><p>&nbsp;</p></td>
                <td width="200">
                    <input type="submit" value="가입하기" onclick="return Check()"> 
                    <input type="reset" value="다시입력">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>