<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 수정</title>
    <style>
        .text_center {
            text-align: center;
        }
    </style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<form method="post" action="${contextPath}/updateBoard.do">
	    <h1 class="text_center">공지 사항 수정</h1>
	    <table align="center">
	        <tr>
	            <td width="200" align="right"><label for="title">제목</label></td>
	            <td width="400"><input type="text" id="title" name="title" value="${schoolVO.title}"></td>
	        </tr>
	        <tr>
	            <td width="200" align="right"><label for="article">내용</label></td>
	            <td width="400"><textarea id="article" name="article" rows="10" cols="50">${schoolVO.article}</textarea></td>
	        </tr>
	        <tr>
	            <td colspan="2" align="center">
	                <input type="submit" value="수정하기">
	                <input type="reset" value="다시입력">
	            </td>
	        </tr>
	    </table>
	    <input type="hidden" name="board_no" value="${schoolVO.board_no}">
	</form>

</body>
</html>
