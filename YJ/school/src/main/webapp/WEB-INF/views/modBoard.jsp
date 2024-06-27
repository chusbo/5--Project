<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 수정</title>
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
        function confirmUpdate() {
            return confirm("수정하시겠습니까?");
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />
    <form method="post" action="${contextPath}/updateBoard.do" onsubmit="return confirmUpdate()">
        <h1 class="text_center">공지사항 수정</h1>
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
