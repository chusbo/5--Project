<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	String sessionId=(String)session.getAttribute("sessionId");
%>	
<!DOCTYPE html>
<html>
<head>
<title>메인 페이지</title>
</head>
<body> 
<jsp:include page="adminHeader.jsp" />

</body>
</html>