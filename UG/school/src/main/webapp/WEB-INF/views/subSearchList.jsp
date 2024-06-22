<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>교과 목록 및 검색</title>
    <script type="text/javascript">
        function handleCheckboxClick(checkbox) {
            const allCheckbox = document.getElementById('allSubjects');
            const subjectCheckboxes = document.querySelectorAll('input[name="sub_no"]:not(#allSubjects)');

            if (checkbox.id === 'allSubjects') {
                if (checkbox.checked) {
                    subjectCheckboxes.forEach(cb => cb.checked = false);
                }
            } else {
                subjectCheckboxes.forEach(cb => cb.checked = false);
                allCheckbox.checked = false;
                checkbox.checked = true;
            }
        }

        function initializeCheckboxes() {
            const allCheckbox = document.getElementById('allSubjects');
            const subjectCheckboxes = document.querySelectorAll('input[name="sub_no"]:not(#allSubjects)');

            if (Array.from(subjectCheckboxes).every(cb => !cb.checked)) {
                allCheckbox.checked = true;
            } else {
                allCheckbox.checked = false;
            }
        }

        document.addEventListener("DOMContentLoaded", initializeCheckboxes);
    </script>
</head>
<body>
    <h2>교과 목록 및 검색</h2>

    <form action="/searchSubjects.do" method="get">
        <input type="checkbox" id="allSubjects" name="sub_no" value="" ${empty selectedNos || (selectedNos.size() == 1 && selectedNos[0] == '') ? 'checked' : ''} onclick="handleCheckboxClick(this)"> 전체
        <c:forEach var="subject" items="${subNames}">
            <input type="checkbox" name="sub_no" value="${subject.sub_no}" 
            ${selectedNos != null && selectedNos.contains(subject.sub_no) ? 'checked' : ''} 
            onclick="handleCheckboxClick(this)"> ${subject.sub_name}
        </c:forEach>
        <input type="submit" value="검색">
    </form>

    <table border="1">
        <tr>
            <th>교과명</th>
            <th>담당교사</th>
        </tr>
        <c:forEach var="subject" items="${subsList}">
            <tr>
                <td>${subject.sub_name}</td>
                <td>${subject.tc_name}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
