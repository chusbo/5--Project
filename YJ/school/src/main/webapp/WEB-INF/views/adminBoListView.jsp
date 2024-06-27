<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>공지사항 상세정보</title>
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
	        .container {
	            width: 50%;
	            margin: 20px auto;
	            background-color: #fff;
	            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	            padding: 20px;
	            border-radius: 8px;
	        }
	        ul {
	            list-style-type: none;
	            padding: 0;
	        }
	        li {
	            padding: 10px 0;
	            border-bottom: 1px solid #ddd;
	        }
	        li strong {
	            width: 100px;
	            display: inline-block;
	        }

	    </style>
	</head>
	<body>
	    <jsp:include page="header.jsp" />
	    <div class="container">
	        <h1>공지사항 상세정보</h1>
	        <ul>
	            <li><strong>제목:</strong> ${adminBoardDetail.title}</li>
	            <li><strong>내용:</strong> ${adminBoardDetail.article}</li>
	            <li><strong>작성일자:</strong> ${adminBoardDetail.cre_date}</li>
	        </ul>
	    </div>
		<div style="text-align:center;">
		<form action="${pageContext.request.contextPath}/delete/${adminBoardDetail.board_no}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
		    <button type="submit">삭제</button>
		</form>
		</div>
	</body>
	</html>