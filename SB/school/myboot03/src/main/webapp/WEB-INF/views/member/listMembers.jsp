<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("UTF-8");
%>	

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center" width="80%">
		<tr align="center" bgcolor="lightgreen">
			<td><b>아이디</b></td>
			<td><b>비밀번호</b></td>
			<td><b>이름</b></td>
			<td><b>이메일</b></td>
			<td><b>가입일</b></td>
			<td><b>삭제</b></td>
			<td><b>회원수정</b></td>
		</tr>
		
	<c:forEach var="member" items="${membersList}" >
		<tr align="center">
			<td>${member.id}</td>
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
			<td>${member.joinDate}</td>
			<c:if test="${member.id eq sessionScope.member.id}">
			    <td><a href="${contextPath}/member/removeMember.do?id=${member.id}" onclick="return confirm('정말 탈퇴 하시겠습니까?')";>삭제하기</a></td>
			    <td><a href="${contextPath}/member/modMember.do?id=${member.id}">수정하기</a></td>
			</c:if>
			<c:if test="${member.id ne sessionScope.member.id}">
			    <td></td>
			    <td></td>
			</c:if>
		</tr>
	</c:forEach>
	</table>
	
		<c:choose>			
			<c:when test="${empty sessionScope.member}">
				<a href="${contextPath}/member/loginForm.do">
					<h1 style="text-align:center">로그인</h1></a>
				<a href="${contextPath}/member/memberForm.do">
					<h1 style="text-align:center">회원가입</h1></a>
			
			</c:when>
			<c:otherwise>
				<h1 style="text-align:center">${member.id}님 환영합니다</h1>
				<a href="${contextPath}/member/logout.do" onclick="return confirm('정말 로그아웃 하시겠습니까?')";>
					<h1 style="text-align:center">로그아웃</h1></a>			
			</c:otherwise>			
		</c:choose>


</body>
</html>