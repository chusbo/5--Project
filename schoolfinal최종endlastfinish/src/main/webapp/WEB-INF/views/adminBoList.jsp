<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>공지사항</title>
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
	           width: 60%;
	           margin: 0 auto;
	           background-color: #fff;
	           box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	           padding: 20px;
	           border-radius: 8px;
	       }
	       .header {
	           display: flex;
	           justify-content: space-between;
	           align-items: center;
	       }
	       table {
	           width: 100%;
	           margin: 20px 0;
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
	           text-align-last: center;
	       }
	       tr:nth-child(even) {
	           background-color: #f9f9f9;
	       }
	       tr:nth-child(odd) {
	           background-color: #ffffff;
	       }
	       .btn-container {
	           margin-top: 20px;
	           text-align: right;
	       }
	       button {
	           background-color: #8192a3;
	           color: white;
	           border: none;
	           padding: 10px 20px;
	           border-radius: 4px;
	           cursor: pointer;
	       }
	       button:hover {
	           background-color: #0056b3;
	       }
	       .text-decoration-none {
	           text-decoration: none;
	       }
	   </style>
    <script>
        function truncateText() {
            var elements = document.querySelectorAll('.truncate-text');
            elements.forEach(function(element) {
                var maxLength = 40; // 최대 글자 수 설정
                var text = element.textContent.trim();
                if (text.length > maxLength) {
                    element.textContent = text.slice(0, maxLength) + '...';
                }
            });
        }
        // 페이지 로드 후 truncateText() 함수 호출
        document.addEventListener('DOMContentLoaded', function() {
            truncateText();
        });
    </script>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
    <div class="header">
        <h1>공지사항</h1>
        <!-- 등록 버튼 -->
        <form action="${contextPath}/addBoard.do" method="get">
            <button type="submit">등록</button>
        </form>
    </div>
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>작성일</th>
                <th>수정</th>
                <th>삭제</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="board" items="${adminBoList}">
                <tr>
                    <td>${board.board_no}</td>
                    <td><a href="${contextPath}/adminBoListView.do/${board.board_no}" class="text-decoration-none">${board.title}</a></td>
                    <td class="truncate-text">${board.article}</td> 
                    <td>${board.cre_date}</td>
                    <td><a href="${contextPath}/modBoard.do/${board.board_no}" class="text-decoration-none">수정</a></td>
                    <td>
                        <form action="${contextPath}/delete/${board.board_no}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
                            <button type="submit">삭제</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
