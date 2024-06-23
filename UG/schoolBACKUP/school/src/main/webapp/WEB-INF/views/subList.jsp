<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 목록</title>
</head>
<body>
    <h2>교과 목록</h2>
    <a href="/addSubForm.do">교과 등록하기</a>
    <table border="1">
        <tr>
            <th>교과명</th>
            <th>담당교사</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="subject" items="${subsList}">
            <tr>
                <td>${subject.sub_name}</td>
                <td>${subject.tc_name}</td>
                <td>
                    <form action="/deleteSub.do" method="post" onsubmit="return confirm('${subject.sub_name} 과목을 삭제하시겠습니까?');">
                        <input type="hidden" name="sub_no" value="${subject.sub_no}" />
                        <input type="submit" value="삭제" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
