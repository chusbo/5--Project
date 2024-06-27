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
            var tc_no = document.getElementById("tc_no");
            var tc_name = document.getElementById("tc_name");
            var tc_birth = document.getElementById("tc_birth");
            var tc_addr = document.getElementById("tc_addr");
            var tc_phone = document.getElementById("tc_phone");
            var tc_hired = document.getElementById("tc_hired");
            var sub_no = document.getElementById("sub_no");
            var user_id = document.getElementById("user_id");
            var tc_status = document.getElementById("tc_status");

            // 번호 검사: tc + 숫자3개
            var tcNoPattern = /^tc\d{3}$/;
            if (!tcNoPattern.test(tc_no.value.trim())) {
                alert('교사번호를 tc 다음에 숫자 3개로 입력해주세요. 예: tc123');
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

            if (tc_birth.value.trim() === '') {
                alert('생년월일을 입력해주세요.');
                tc_birth.focus();
                return false;
            }

            // 주소 검사: 빈 값 검사
            if (tc_addr.value.trim() === '') {
                alert('주소를 입력해주세요. 예) 대전광역시 서구 둔산동');
                tc_addr.focus();
                return false;
            }

            // 전화번호 검사: 숫자3개-숫자4개-숫자4개
            var phonePattern = /^\d{3}-\d{4}-\d{4}$/;
            if (!phonePattern.test(tc_phone.value.trim())) {
                alert('휴대폰 번호를 정확히 입력해주세요. 예: 010-1234-5678');
                tc_phone.focus();
                return false;
            }

            if (tc_hired.value.trim() === '') {
                alert('입사일을 입력해주세요.');
                tc_hired.focus();
                return false;
            }

            if (sub_no.value.trim() === '') {
                alert('과목을 입력해주세요.');
                sub_no.focus();
                return false;
            }

            // 아이디 검사: user + 숫자3개
            var userIdPattern = /^user\d{3}$/;
            if (!userIdPattern.test(user_id.value.trim())) {
                alert('아이디는 user 다음에 숫자 3개를 입력해주세요. 예: user001');
                user_id.focus();
                return false;
            }

            // 상태 검사: 재직 or 휴직
            if (tc_status.value.trim() !== '재직' && tc_status.value.trim() !== '휴직') {
                alert('상태는 재직 또는 휴직만 입력해주세요.');
                tc_status.focus();
                return false;
            }
            
            return confirm('정말 등록하시겠습니까?');
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />

    <form method="post" name="update" action="${contextPath}/tcAdd.do" onsubmit="return checkForm()">
        <h1 class="text_center">신규 교사 등록</h1>
        <table align="center">
            <tr>
                <td width="100"><p align="right">교사번호</p></td>
                <td width="200"><input type="text" name="tc_no" id="tc_no"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">이름</p></td>
                <td width="200"><input type="text" name="tc_name" id="tc_name"></td>
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
                <td width="100"><p align="right">휴대폰 번호</p></td>
                <td width="200"><input type="text" name="tc_phone" id="tc_phone"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">입사일</p></td>
                <td width="200"><input type="date" name="tc_hired" id="tc_hired"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">과목</p></td>
                <td width="200"><input type="text" name="sub_no" id="sub_no"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">아이디</p></td>
                <td width="200"><input type="text" name="user_id" id="user_id"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">상태</p></td>
                <td width="200"><input type="text" name="tc_status" id="tc_status"></td>
            </tr>
		</table>
		<div style="text-align: center;">
            <input type="submit" value="가입하기">
			<input type="reset" value="다시입력">
		</idv>
    </form>
</body>
</html>
