<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>학생 정보 수정</title>
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
        function checkForm() {
            var st_name = document.forms["studentForm"]["st_name"];
            var st_birth = document.forms["studentForm"]["st_birth"];
            var st_addr = document.forms["studentForm"]["st_addr"];
            var st_phone = document.forms["studentForm"]["st_phone"];
            var st_parent_phone = document.forms["studentForm"]["st_parent_phone"];
            var st_grade = document.forms["studentForm"]["st_grade"];
            var tc_no = document.forms["studentForm"]["tc_no"];

            var phonePattern = /^010-\d{4}-\d{4}$/;
            var gradePattern = /^\d학년$/;
            var tcNoPattern = /^tc\d{3}$/;

            if (st_name.value === '') {
                alert('이름을 입력해주세요.');
                st_name.focus();
                return false;
            }

            if (st_birth.value === '') {
                alert('생년월일을 입력해주세요.');
                st_birth.focus();
                return false;
            }

            if (st_addr.value === '') {
                alert('주소를 정확히 입력해주세요. 예) 대전광역시 서구 둔산동 111');
                st_addr.focus();
                return false;
            }

            if (st_phone.value === '' || !phonePattern.test(st_phone.value)) {
                alert('휴대폰 번호를 정확히 입력해주세요. 예) 010-0000-0000');
                st_phone.focus();
                return false;
            }

            if (st_parent_phone.value === '' || !phonePattern.test(st_parent_phone.value)) {
                alert('학부모 번호를 정확히 입력해주세요. 예) 010-0000-0000');
                st_parent_phone.focus();
                return false;
            }

            if (st_grade.value === '' || !gradePattern.test(st_grade.value)) {
                alert('학년을 정확히 입력해주세요. 예) 1학년');
                st_grade.focus();
                return false;
            }

            if (tc_no.value === '' || !tcNoPattern.test(tc_no.value)) {
                alert('담임교사 번호를 정확히 입력해주세요. 예) tc001');
                tc_no.focus();
                return false;
            }

            return confirm('정말 수정하시겠습니까?');
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <h1>학생 정보 수정</h1>
    <form name="studentForm" action="${contextPath}/updateStudent.do" method="post" onsubmit="return checkForm()">
        <table>
            <tr>
                <th>학생번호</th>
                <td>
                    <span>${student.st_no}</span>
                    <input type="hidden" name="st_no" value="${student.st_no}">
                </td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="st_name" value="${student.st_name}"></td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td><input type="date" name="st_birth" value="${student.st_birth}"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td>
                    <select name="st_gender">
                        <option value="남성" <c:if test="${student.st_gender == '남성'}">selected</c:if>>남성</option>
                        <option value="여성" <c:if test="${student.st_gender == '여성'}">selected</c:if>>여성</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>주소</th>
                <td><input type="text" name="st_addr" value="${student.st_addr}"></td>
            </tr>
            <tr>
                <th>휴대폰 번호</th>
                <td><input type="text" name="st_phone" value="${student.st_phone}"></td>
            </tr>
            <tr>
                <th>학부모 번호</th>
                <td><input type="text" name="st_parent_phone" value="${student.st_parent_phone}"></td>
            </tr>
            <tr>
                <th>학년</th>
                <td><input type="text" name="st_grade" value="${student.st_grade}"></td>
            </tr>
            <tr>
                <th>담임교사</th>
                <td><input type="text" name="tc_no" value="${student.tc_no}"></td>
            </tr>
        </table>
        <div style="text-align:center;">
            <input type="submit" value="수정하기">
        </div>
    </form>
</body>
</html>