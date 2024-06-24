<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
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
<jsp:include page="adminHeader.jsp" />
<br>
<div>
    <h1>공지 사항</h1>
    <br>
	<!-- 등록 버튼 -->
		<form action="${contextPath}/addBoard.do" method="get">
		    <button type="submit">등록</button>
		</form>
    <c:if test="${not empty message}">
        <div>${message}</div>
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
