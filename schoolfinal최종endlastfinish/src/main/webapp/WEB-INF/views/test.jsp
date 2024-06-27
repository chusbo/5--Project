<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String userId = (String) session.getAttribute("userId");
if (userId == null) {
    // 로그인 안된 상태
    response.sendRedirect("login.jsp");
} else {
    // 여기서 userId를 기반으로 데이터베이스 쿼리를 통해 사용자 정보 조회
    // 예시로 간단히 userId가 admin인 경우를 판단하도록 함
    if ("admin".equals(userId)) {
        // 관리자용 헤더 포함
%>
        <%@ include file="adminHeader.jsp" %>
<%
    } else {
        // 일반 헤더 포함
%>
        <%@ include file="header.jsp" %>
<%
    }
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상단 메뉴 페이지</title>
</head>
<body>

</body>
</html>
