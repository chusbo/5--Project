<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 목록 및 검색</title>
    <script type="text/javascript">
        function toggleAll(cb) {
            const allCb = document.getElementById('allCb');
            const cbs = document.querySelectorAll('input[name="sub_no"]:not(#allCb)');

            if (cb.id === 'allCb') {
                if (cb.checked) {
                    cbs.forEach(el => el.checked = false);
                }
            } else {
                allCb.checked = false;
                cb.checked = true;
                cbs.forEach(el => {
                    if (el !== cb) el.checked = false;
                });
            }
        }

        function initCbs() {
            const allCb = document.getElementById('allCb');
            const cbs = document.querySelectorAll('input[name="sub_no"]:not(#allCb)');

            allCb.checked = Array.from(cbs).every(cb => !cb.checked);
        }

        document.addEventListener("DOMContentLoaded", initCbs);
    </script>
</head>
<body>
    <h2>교과 목록 및 검색</h2>

    <form action="/searchSubjects.do" method="get">
        <input type="checkbox" id="allCb" name="sub_no" value="" 
        <c:if test="${empty selectedNos || (selectedNos.size() == 1 && selectedNos[0] == '')}">checked</c:if> 
        onclick="toggleAll(this)"> 전체

        <c:forEach var="sub" items="${subNames}">
            <input type="checkbox" name="sub_no" value="${sub.sub_no}" 
            <c:if test="${selectedNos != null && selectedNos.contains(sub.sub_no)}">checked</c:if> 
            onclick="toggleAll(this)"> ${sub.sub_name}
        </c:forEach>
        
        <input type="submit" value="검색">
    </form>

    <table border="1">
        <tr>
            <th>교과명</th>
            <th>담당교사</th>
        </tr>
        <c:forEach var="sub" items="${subsList}">
            <tr>
                <td>${sub.sub_name}</td>
                <td>${sub.tc_name}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
