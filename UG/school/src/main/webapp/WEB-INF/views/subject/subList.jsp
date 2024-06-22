<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 목록</title>
    <script type="text/javascript">
        function confirmDelete(subName, form) {
            if (confirm(subName + " 과목을 삭제하시겠습니까?")) {
                form.submit();
            }
        }
    </script>
</head>
<body>
    <h2>교과 목록</h2>
    <form action="/subject/addSubForm.do" method="get">
        <input type="submit" value="교과 등록하기">
    </form>

    <table border="1">
        <tr>
            <th>교과명</th>
            <th>담당교사</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="sub" items="${subsList}">
            <tr>
                <td>${sub.sub_name}</td>
                <td>${sub.tc_name}</td>
                <td>
                    <form action="/subject/deleteSub.do" method="post" style="display:inline;">
                        <input type="hidden" name="sub_no" value="${sub.sub_no}">
                        <input type="button" value="삭제" onclick="confirmDelete('${sub.sub_name}', this.form)">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
