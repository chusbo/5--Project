<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<%-- 부트스트랩 사용을 위한 필수 파일 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<title>메인 페이지</title>
<style>
.inline-block {
    display: inline-block;
    margin-right: 10px; /* 요소들 사이의 간격 조절을 위한 마진 */
}
.mai{
	width: 30%;
	height: 300px;
	border:3px solid gray;
	border-radius: 30px;
	margin: 15px;
	
}


</style>
</head>
<body> 
<jsp:include page="header.jsp" />
	
<jsp:include page="mainBoList.jsp" />
<br><br><br><br><br> 
<div style="--bs-gap: .25rem 1rem;">     
	<div class="container text-center">    
		<!-- 학생정보 -->
		<div class="mai inline-block text-senter">
			<a href="${contextPath}/stList.do" class="nav-link">
					
				<h4>학생정보</h4>
				<img src="../img/img.png" width="200px;">
			</a>
		</div>
    
		<!-- 교사정보	-->
		<div class="mai inline-block">
			<a href="${contextPath}/tcList.do" class="nav-link">    
				
				<c:choose>			
							<c:when test="${school.user_id eq 'admin'}">
								<a href="${contextPath}/adminTcList.do" class="nav-link">
							</c:when>
							<c:otherwise>
								<a href="${contextPath}/tcList.do" class="nav-link">		
							</c:otherwise>			
						</c:choose>
				<h4>교사정보</h4>
				<img src="../img/img.png" width="200px;">
			</a>
			
			
		</div>
    	
		<!-- 교과정보 -->
		<div class="mai inline-block">
			<a href="${contextPath}/searchSubjects.do" class="nav-link">
				<c:choose>			
											<c:when test="${school.user_id eq 'admin'}">
												<a href="${contextPath}/listSubjects.do" class="nav-link">
											</c:when>
											<c:otherwise>
												<a href="${contextPath}/searchSubjects.do" class="nav-link">		
											</c:otherwise>			
										</c:choose>
				<h4>교과정보</h4>
				<img src="../img/subject.png" width="200px;">
			</a>
		</div>
	</div>
</div>
</body>
</html>
