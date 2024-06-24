<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<style>
/* 전체 영역 지정 */
.container {
	display: flex;
	flex-direction: column;
	justify-content: center;
	text-align: center;
	align-items: center;
	height: 100vh;
}

.formboxtitle {
	font-weight: bold;
	font-size: 30px;
	text-transform: uppercase;
	padding: 5px;
	margin-bottom: 20px;
}

.formbox {
	margin: 10px;
}

/* 아이디, 비밀번호 화면 */
.inputbox {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	margin-bottom: 10px;
}

.inputbox label {
	min-width: 80px;
	text-align: right;
	margin-right: 10px;
}

.inputbox input {
	flex: 1;
	padding: 5px;
}

.buttons {
	display: flex;
	justify-content: flex-end;
	margin-top: 10px;
}

.buttons input {
	margin-left: 10px;
}
</style>
<c:choose>
	<c:when test="${result == 'loginFailed'}">
		<script>
			window.onload = function() {
				alert("아이디나 비밀번호가 틀립니다. 다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
<div class="container">	
	<form name="frmLogin" method="post" action="${contextPath}/login.do">
		<div class="formboxtitle">로그인</div>
		<div class="formbox">
			<div class="inputbox">
				<label for="id">아이디:</label> 
				<input type="text" id="user_id" name="user_id">
			</div>
			<div class="inputbox">
				<label for="passwd">비밀번호:</label> 
				<input type="password" id="user_pwd" name="user_pwd">
			</div>
			<div class="buttons">
				<input type="submit" value="로그인">
				<input type="reset" value="다시입력">
			</div>
		</div>
	</form>
</div>	
</body>
</html>
