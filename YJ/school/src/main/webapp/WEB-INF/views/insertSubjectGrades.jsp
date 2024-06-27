<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>성적 입력</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
    <script>
        function checkForm() {
            var st_no = document.getElementById("st_no");
            var score = document.getElementById("score");

            var stNoPattern = /^st\d{3}$/;
            var scorePattern = /^(?:100|[1-9]?[0-9])$/;

            if (!stNoPattern.test(st_no.value)) {
                alert('학생 번호를 정확히 입력해주세요. 예) st001');
                st_no.focus();
                return false;
            }

            if (!scorePattern.test(score.value)) {
                alert('점수를 정확히 입력해주세요. 0점에서 100점 사이여야 합니다.');
                score.focus();
                return false;
            }

            return confirm('정말 제출하시겠습니까?');
        }
    </script>
</head>
<body>
    <jsp:include page="header.jsp" />

    <form method="post" name="insertSubjectGrades" action="${contextPath}/insertSubjectGradesProcess.do" onsubmit="return checkForm()">
        <h1>성적 입력</h1>
        <table align="center">
            <tr>
                <td width="100"><p align="right">학생 번호</p></td>
                <td width="200"><input type="text" name="st_no" id="st_no"></td>
            </tr>
            <tr>
                <td width="100"><p align="right">과목</p></td>
                <td width="200">
                    <select id="sub_no" name="sub_no">
                        <option value="kor">국어</option>
                        <option value="eng">영어</option>
                        <option value="mat">수학</option>
                        <option value="soc">사회</option>
                        <option value="sci">과학</option>
                        <option value="his">역사</option>
                        <option value="eth">도덕</option>
                        <option value="phy">체육</option>
                        <option value="art">미술</option>
                        <option value="tec">기술가정</option>
                        <option value="inf">정보</option>            
                        <option value="mus">음악</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td width="100"><p align="right">학년학기</p></td>
                <td width="200">
                    <select id="semester" name="semester">
                        <option value="1학년 1학기">1학년 1학기</option>
                        <option value="1학년 2학기">1학년 2학기</option>
                        <option value="2학년 1학기">2학년 1학기</option>
                        <option value="2학년 2학기">2학년 2학기</option>
                        <option value="3학년 1학기">3학년 1학기</option>
                        <option value="3학년 2학기">3학년 2학기</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td width="100"><p align="right">점수</p></td>
                <td width="200"><input type="text" name="score" id="score"></td>
            </tr>           
        </table>
		<div style="text-align:center;">
		<input type="submit" value="제출">
		<input type="reset" value="다시입력">
		</div>
    </form>
</body>
</html>
