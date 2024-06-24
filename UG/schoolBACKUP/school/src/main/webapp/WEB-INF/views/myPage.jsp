<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
</head>
<body>
	<%@ include file="header.jsp" %>
    <h2>My Page</h2>
    <c:if test="${not empty updateMessage}">
        <p style="color:green;">${updateMessage}</p>
    </c:if>
    <form action="/updateUser.do" method="post">
        <input type="hidden" name="user_id" value="${user.user_id}" />
        <label for="tc_name">이름</label>
        <input type="text" id="tc_name" name="tc_name" value="${user.tc_name}" disabled /><br />
        <input type="hidden" name="tc_name" value="${user.tc_name}" />
        
        <label for="tc_birth">생년월일</label>
        <input type="text" id="tc_birth" name="tc_birth" value="${user.tc_birth}" disabled /><br />
        <input type="hidden" name="tc_birth" value="${user.tc_birth}" />
        
        <label for="tc_phone">전화번호</label>
        <input type="text" id="tc_phone" name="tc_phone" value="${user.tc_phone}" /><br />
        
        <label for="tc_addr">주소</label>
        <input type="text" id="tc_addr" name="tc_addr" value="${user.tc_addr}" /><br />
        
        <label for="tc_hired">입사일</label>
        <input type="text" id="tc_hired" name="tc_hired" value="${user.tc_hired}" disabled /><br />
        <input type="hidden" name="tc_hired" value="${user.tc_hired}" />
        
        <input type="submit" value="수정하기" />
    </form>
</body>
</html>
