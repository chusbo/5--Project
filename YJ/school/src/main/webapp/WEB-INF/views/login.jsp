<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	body {
	    margin: 0;
	    height: 100vh; /* 전체 화면 높이 설정 */
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    background-image: url('../img/bono2.jpg');
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
	    margin-bottom: 12%;
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

	.inputbox input {
	    flex: 1;
	    padding: 5px;
	    color: white; /* 글씨 색상 흰색 */
	    background-color: black; /* 배경을 투명하게 설정 */
	    border: 1px solid white; /* 흰색 테두리 추가 */
	}

	.buttons {
	    display: flex;
	    justify-content: flex-end;
	    margin: 10px;
	}

	.buttons input {
		background-color: black;
		color:white;
		margin: 10px;
	}
	#bono {
		background-color:black;
		margin: 0px, 10px;
		border: none; /* 테두리 제거 */
		background: none; /* 배경 제거 */
		cursor: pointer; /* 커서 포인터로 변경 */
		padding: 5px; /* 내부 여백 조정 */
	}
	/* 이미지 스타일 */
	#bono img {
	width: 20px; /* 이미지 너비 조정 */
	height: 20px; /* 이미지 높이 조정 */
	vertical-align: middle; /* 이미지 세로 중앙 정렬 */
	}
	
	@keyframes slideInRight {
	    from {
	        transform: translateX(100%);
	    }
	    to {
	        transform: translateX(0);
	    }
	}

	@keyframes slideOutRight {
	    from {
	        transform: translateX(0);
	    }
	    to {
	        transform: translateX(100%);
	    }
	}

	.slide-out {
	    animation: slideOutRight 0.5s forwards;
	}

	.slide-in {
	    animation: slideInRight 0.5s forwards;
	}
	</style>
	<script>
		function slideEffect() {
		    var imageElement = document.getElementById('bono'); // 이미지 요소의 ID를 사용하여 선택
		    imageElement.classList.add('slide-in'); // 화면에서 들어오는 슬라이드 효과 클래스 추가

		    setTimeout(function() {
		        imageElement.classList.remove('slide-in'); // 들어오는 효과 클래스 제거
		        imageElement.classList.add('slide-out'); // 나가는 효과 클래스 추가
		    }, 500); // 0.5초 후에 슬라이드 효과를 변경합니다.
		}
	</script>
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
				<input type="text" id="user_id" name="user_id" placeholder="아이디">
			</div>
			<div class="inputbox">
				<input type="password" id="user_pwd" name="user_pwd" placeholder="패스워드">
			</div>
			<div class="buttons">
				<input type="submit" value="로그인" id="login">
				<input type="reset" value="다시입력" id="login">
				<button type="button" id="bono" onclick="slideEffect()">
					<img src="../img/bonoface2.jpg" alt="bono">
				</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>
