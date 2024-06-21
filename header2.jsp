<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jung.Dessert" import="jung.DessertRepository" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
    .category {
        margin-top: 10px;
    }
    .category ul {
        padding: 0;
        margin: 0;
    }
    .category ul li {
        list-style: none; 
        display: inline-block;
        position: relative;
        margin-right: 200px;
    }
    
   .category ul li:last-child {
	      margin-right: 0; /* 마지막 항목은 간격을 없애기 위해 */
    }
    
    .category ul li a {
        text-decoration: none; 
        color: black;
    }
    .Home {
        width: 40px;
    }
    .submenu {
        display: none; 
        position: absolute; 
        top: 100%; 
        left: 0; 
        z-index: 1000; 
        min-width: 10rem; 
        padding: 0.5rem 0; 
        margin: 0.125rem 0 0; 
        font-size: 1rem; 
        color: #212529; 
        text-align: left; 
        list-style: none; 
        background-color: #fff; 
        background-clip: padding-box;
    }
    .category:hover .submenu {
        display: block;
    }
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="category align-items-md-stretch text-center">
        <ul>
            <li>
                <h2><a href="#" class="dropdown" id="">Menu</a></h2>
                <ul class="submenu">
                    <li><a href="#">Submenu1</a></li>
                    <li><a href="#">Submenu2</a></li>
                    <li><a href="#">Submenu3</a></li>
                    <li><a href="#">Submenu4</a></li>
                </ul>
            </li>
            <li>
                <h2><a href="#">Store</a></h2>
                <ul class="submenu">
                    <li><a href="#">Submenu1</a></li>
                    <li><a href="#">Submenu2</a></li>
                    <li><a href="#">Submenu3</a></li>
                    <li><a href="#">Submenu4</a></li>
                </ul>
            </li>
            <li>
                <h2><a href="./welcome.jsp"><img src="../resources/images/home.png" alt="Home" class="Home"></a></h2>
            </li>
            <li>
                <h2><a href="#">Community</a></h2>
                <ul class="submenu">
                    <li><a href="#">Submenu1</a></li>
                    <li><a href="#">Submenu2</a></li>
                    <li><a href="#">Submenu3</a></li>
                    <li><a href="#">Submenu4</a></li>
                </ul>
            </li>
            <li>
                <h2><a href="#">Admin</a></h2>
                <ul class="submenu">
                    <li><a href="#">Submenu1</a></li>
                    <li><a href="#">Submenu2</a></li>
                    <li><a href="#">Submenu3</a></li>
                    <li><a href="#">Submenu4</a></li>
                </ul>
            </li>
        </ul>
    </div>
</body>
</html>