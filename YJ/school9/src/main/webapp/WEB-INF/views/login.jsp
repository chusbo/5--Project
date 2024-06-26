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
	body {
	    margin: 0;
	    height: 100vh; /* 전체 화면 높이 설정 */
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    background-image: url('../img/main.jpg');
	    background-repeat: no-repeat;
	    background-size: cover; /* 이미지가 화면을 덮도록 설정 */
	    background-position: center center; /* 이미지 위치를 화면 중앙으로 설정 */
	    background-attachment: fixed; /* 스크롤 시 이미지 고정 */
	}

	.container {
	    display: flex;
	    flex-direction: column;
	    justify-content: center;
	    text-align: center;
	    align-items: center;
	    padding: 20px;
	    border-radius: 10px;
	    margin-bottom: 9%;
	}

	.formboxtitle {
	    font-weight: bold;
	    font-size: 30px;
	    text-transform: uppercase;
	    padding: 5px;
	    margin-bottom: 20px;
	    color: white; /* 글씨 색상 흰색 */
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
	    color: white; /* 글씨 색상 흰색 */
	}

	.inputbox input {
	    flex: 1;
	    padding: 5px;
	    color: white; /* 글씨 색상 흰색 */
	    background-color: transparent; /* 배경을 투명하게 설정 */
	    border: 1px solid white; /* 흰색 테두리 추가 */
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
