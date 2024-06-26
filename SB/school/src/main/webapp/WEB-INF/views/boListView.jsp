<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 상세 정보</title>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h1>공지사항 상세 정보</h1>
    
        <ul>
            <li>제목: ${boardDetail.title}</li>
            <li>내용: ${boardDetail.article}</li>
            <li>작성일자: ${boardDetail.cre_date}</li>
        </ul>
    
</body>
</html>
