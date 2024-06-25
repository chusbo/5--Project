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
            var st_name = document.getElementById("st_name");
            
			if (st_name.value === '') {
			    alert('이름을 입력해주세요.');
			    st_name.focus();
			    return false;
			}

            return true;
        }
    </script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>학생 정보 수정</h1>
	<form action="${contextPath}/updateStudent.do" method="post">
	    <table>
			<tr>
			    <th>학번</th>
			    <td>
			        <span>${student.st_no}</span>
			        <input type="hidden" name="st_no" value="${student.st_no}">
			    </td>
			</tr>
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
					<select name="st_gender" value="${student.st_gender}">
						<option value="남성">남성</option>
						<option value="여성">여성</option>
					</select>
				</td>
	        </tr>
	        <tr>
	            <th>주소</th>
	            <td><input type="text" name="st_addr" value="${student.st_addr}"></td>
	        </tr>
	        <tr>
	            <th>핸드폰번호</th>
	            <td><input type="text" name="st_phone" value="${student.st_phone}"></td>
	        </tr>
	        <tr>
	            <th>학부모번호</th>
	            <td><input type="text" name="st_parent_phone" value="${student.st_parent_phone}"></td>
	        </tr>
	        <tr>
	            <th>학년</th>
	            <td><input type="text" name="st_grade" value="${student.st_grade}"></td>
	        </tr>
	        <tr>
	            <th>담임선생님</th>
	            <td><input type="text" name="tc_no" value="${student.tc_no}"></td>
	        </tr>
	    </table>
	    <div style="text-align:center;">
	        <input type="submit" value="수정하기" onclick="return confirm('정말 수정하시겠습니까?');">
	    </div>
	</form>
</body>
</html>