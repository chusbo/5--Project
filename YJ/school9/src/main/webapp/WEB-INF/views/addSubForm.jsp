<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 등록</title>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h2>교과 등록</h2>
    <form action="/addSub.do" method="post">
        <label for="sub_no">과목 번호:</label>
        <input type="text" id="sub_no" name="sub_no" required pattern="sub\d{3}" title="sub 다음에 숫자 3개를 입력해주세요. 예: sub123" /><br />
        <label for="sub_name">과목명:</label>
        <input type="text" id="sub_name" name="sub_name" required pattern="[가-힣a-zA-Z]+" title="한글 또는 영문으로만 입력해주세요." /><br />
        <input type="submit" value="등록하기" />
    </form>
</body>
</html>
