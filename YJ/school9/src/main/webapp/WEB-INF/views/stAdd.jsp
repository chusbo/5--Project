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
	        var st_birth = document.getElementById("st_birth");
	        var st_phone = document.getElementById("st_phone");
	        var st_parent_phone = document.getElementById("st_parent_phone");
	        var st_grade = document.getElementById("st_grade");
	        var tc_no = document.getElementById("tc_no");
			
			//담임 교사 코드
			var stNoValue = st_no.value.trim();			
			var pattern = /^st\d{3}$/;
			if (stNoValue === '' || !pattern.test(stNoValue)) {
				alert('담임 교사 코드를 올바르게 입력해주세요. (예: st123)');
				st_no.focus();
				return false;
			}
			
			//이름
			var stNameValue = st_name.value.trim();
			var pattern = /^[가-힣a-zA-Z]+$/;
			if (stNameValue === '' || !pattern.test(stNameValue)) {
			    alert('이름을 한글 또는 영문으로 입력해주세요.');
			    st_name.focus();
			    return false;
			}

			
	        if (st_birth.value.trim() === '') {
	            alert('생년월일을 입력해주세요.');
	            st_birth.focus();
	            return false;
	        }

			var stPhoneValue = st_phone.value.trim();
			var pattern = /^\d{3}-\d{4}-\d{4}$/;
			if (stPhoneValue === '' || !pattern.test(stPhoneValue)) {
			    alert('전화번호를 형식에 맞게 입력해주세요. (예: 010-1234-5678)');
			    st_phone.focus();
			    return false;
			}

			var stPhoneValue = st_parent_phone.value.trim();
			var pattern = /^\d{3}-\d{4}-\d{4}$/;
	        if (st_parent_phone.value.trim() === '') {
	            alert('비상연락처(부모님)를 입력해주세요.');
	            st_parent_phone.focus();
	            return false;
	        }
       
	        var gradePattern = /^\d+학년$/;
	        if (!gradePattern.test(st_grade.value.trim())) {
	            alert('올바른 학년 형식이 아닙니다. 학년을 입력해주세요.');
	            st_grade.focus();
	            return false;
	        }

			// 입력값 가져오기
			var tcNoValue = tc_no.value.trim();			
			var pattern = /^tc\d{3}$/;
			if (tcNoValue === '' || !pattern.test(tcNoValue)) {
			    alert('담임 교사 코드를 올바르게 입력해주세요. (예: tc123)');
			    tc_no.focus();
			    return false;
			}

	        if (name.value.length < 1 || name.value.length > 10) {
	            alert("[이름]\n 최소 1자에서 최대 10자까지 입력하세요");
	            name.focus();
	            return false;
	        }

	        if (email.value.trim() === '' || email.value.indexOf('@') === -1 || email.value.indexOf('.') === -1) {
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