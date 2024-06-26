<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 상세 정보</title>
</head>
<body>
<div>
	<jsp:include page="header.jsp" />
	<br>
		
    <h1>공지사항 상세 정보</h1>
    
    <ul>
		
        <li>제목: ${adminBoardDetail.title}</li>
        <li>내용: ${adminBoardDetail.article}</li>
        <li>작성일자: ${adminBoardDetail.cre_date}</li>
    </ul>

	<!-- 삭제 버튼 -->
	<form action="${pageContext.request.contextPath}/delete/${adminBoardDetail.board_no}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
		<button type="submit">삭제</button>
	</form>

</div>			
</body>
</html>
