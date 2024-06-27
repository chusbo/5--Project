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
            var st_no = document.getElementById("st_no");
            var st_name = document.getElementById("st_name");
            var st_birth = document.getElementById("st_birth");
            var st_addr = document.getElementById("st_addr");
            var st_phone = document.getElementById("st_phone");
            var st_parent_phone = document.getElementById("st_parent_phone");
            var st_grade = document.getElementById("st_grade");
            var tc_no = document.getElementById("tc_no");

            var stNoPattern = /^st0(0[1-9]|[1-9][0-9])$/;
            var namePattern = /^[가-힣a-zA-Z]+$/;
            var phonePattern = /^\d{3}-\d{4}-\d{4}$/;
            var gradePattern = /^\d학년$/;
            var tcNoPattern = /^tc\d{3}$/;

            if (!stNoPattern.test(st_no.value.trim())) {
                alert('학생 번호를 올바르게 입력해주세요. 예) st001 ~ st099');
                st_no.focus();
                return false;
            }

            if (!namePattern.test(st_name.value.trim())) {
                alert('이름을 한글 또는 영문으로 입력해주세요.');
                st_name.focus();
                return false;
            }

            if (st_birth.value.trim() === '') {
                alert('생년월일을 입력해주세요.');
                st_birth.focus();
                return false;
            }

            if (st_addr.value.trim() === '') {
                alert('주소를 입력해주세요. 예) 대전광역시 서구 둔산동 111');
                st_addr.focus();
                return false;
            }

            if (!phonePattern.test(st_phone.value.trim())) {
                alert('휴대폰 번호를 형식에 맞게 입력해주세요. 예) 010-0000-0000');
                st_phone.focus();
                return false;
            }

            if (!phonePattern.test(st_parent_phone.value.trim())) {
                alert('학부모 번호를 형식에 맞게 입력해주세요. 예) 010-0000-0000');
                st_parent_phone.focus();
                return false;
            }

            if (!gradePattern.test(st_grade.value.trim())) {
                alert('올바른 학년 형식이 아닙니다. 예) 1학년');
                st_grade.focus();
                return false;
            }

            if (!tcNoPattern.test(tc_no.value.trim())) {
                alert('담임교사 교사번호를 올바르게 입력해주세요. 예) tc001');
                tc_no.focus();
                return false;
            }

            return confirm('정말 등록하시겠습니까?');
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <form method="post" name="update" action="${contextPath}/stAdd.do" onsubmit="return checkForm()">
        <h1 class="text_center">신규 학생 등록</h1>
        <table align="center">
            <tr>
                <td width="100"><p align="right">학생번호</p></td>
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
                <td width="100"><p align="right">휴대폰 번호</p></td>
                <td width="200"><input type="text" name="st_phone" id="st_phone"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">학부모 번호</p></td>
                <td width="200"><input type="text" name="st_parent_phone" id="st_parent_phone"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">학년</p></td>
                <td width="200"><input type="text" name="st_grade" id="st_grade"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">담임교사 교사번호</p></td>
                <td width="200"><input type="text" name="tc_no" id="tc_no"></td>
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
