<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>공지사항 등록</title>
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
	    .container {
	        width: 50%;
	        margin: 0 auto;
	        background-color: #fff;
	        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	        border-radius: 8px;
	        padding: 20px;
	        box-sizing: border-box;
	    }
	    .form-container {
	        display: flex;
	        flex-direction: column;
	        align-items: center;
	    }
	    .form-container div {
	        width: 100%;
	        margin-bottom: 15px;
	    }
	    label {
	        display: block;
	        margin-bottom: 5px;
	        font-weight: bold;
	    }
	    input[type="text"],
	    textarea {
	        width: 100%;
	        padding: 10px;
	        border: 1px solid #ccc;
	        border-radius: 4px;
	        box-sizing: border-box;
	    }
	    button {
	        padding: 10px 20px;
	        background-color: #8192a3;
	        color: white;
	        border: none;
	        border-radius: 4px;
	        cursor: pointer;
	    }
	    button:hover {
	        background-color: #0056b3;
	    }
	    .message {
	        background-color: #f8d7da;
	        color: #721c24;
	        padding: 10px;
	        border: 1px solid #f5c6cb;
	        border-radius: 4px;
	        margin-bottom: 20px;
	    }
	</style>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">  	      
	<h1>공지사항 등록</h1>
	<c:if test="${not empty message}">
		<div class="message">${message}</div>
	</c:if>
	<div class="form-container">
		<form action="${pageContext.request.contextPath}/addBoard.do" method="post">	
			<div>
			 	<label for="title">제목:</label>
				<input type="text" name="title" required>
			</div>
			
			<div>
				<label for="article">내용:</label>
				<textarea name="article" required></textarea>
			</div>
			<div>
				<button type="submit">등록하기</button>
			</div>
		</form>
	</div>
</div>    
</body>
</html>
