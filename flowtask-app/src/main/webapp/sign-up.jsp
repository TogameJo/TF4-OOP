<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- favicon -->
    <link rel="icon" type="image/png" href="./images/favicon/favicon-96x96.png"> 
    <!-- css -->
    <link rel = "stylesheet" href="all_component/reset.css">
    <link rel = "stylesheet" href="all_component/styles.css">
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&family=Sen:wght@400..800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Flex:opsz,wght@8..144,100..1000&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <title>Sign-up</title>
</head>
<body class="body_register" style="height: 80rem;">
    <header class="header fixed">
        <div class="main-content">
            <div class="body">
                <!-- logo -->
                <a href="index.jsp" target="_self"><img src="./images/logo2.png" alt="logo" class="logo"></a>
                <!-- nav -->
                <nav class="nav">
                    <ul>
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="index.jsp#about-us">About</a></li>
                        <li><a href="index.jsp#job-mana">Feedback</a></li>
                        <li><a href="index.jsp#footer">Contact</a></li>
                    </ul>
                </nav>
                <div class="action">
                    <ul>
                        <li><a href="sign-in.jsp" target="_parent" class="btn btn-sign-in">Sign In</a></li>
                        <li><a href="sign-up.jsp" target="_parent" class="btn btn-sign-up register_after">Sign Up</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="signup-box">
        <h1>Sign up</h1>
        <h4>It's only takes a minute</h4>
        
        <c:if test="${not empty successmsg}">
        <!-- nếu thỏa mãn succes trong session -->
        <p class = "text-success text-anotation">${successmsg}</p>
        <c:remove var="successmsg" scope="session"/>
        </c:if>
        
        <c:if test="${not empty failedmsg}">
        <p class = "text-failed text-anotation">${failedmsg}</p>
        <c:remove var="failedmsg" scope="session"/>
        <!--xóa biến successmsg khỏi session sau khi hiển thị để không hiển thị lại sau khi tải lại trang. -->
        </c:if>
        
        <form action="RegisterServlet" method="post">
            <label for="exampleInputUsername1">User Name</label>
            <input type="text" class = "form-control" name="username" id="exampleInputUsername1" placeholder="" required ="required">
            <label for="exampleInputEmail1">Email</label>
            <input type="email" class = "form-control" name="email" id="exampleInputEmail1" placeholder="" required="required">
            <label for="exampleInputPhone">Phone number</label>
            <input type="tel" class = "form-control" name="phonenum" id="exampleInputPhone" placeholder="" required="required">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class = "form-control" name="password" id="exampleInputPassword1" placeholder="" required= "required">
            <input type="submit" value="Submit" required>
        </form>           
           <div class="form-check">
            <input type="checkbox" class="form-check-input" name="check" id="examplecheck" required = "required">
            <label for="examplecheck" class="footer-policy">By clicking the Submit button, you agree <br> to our
                <a href="#" target="_blank">Terms & Condition</a> and <a href="#" target="_blank">Policy Privacy</a>.
            </label>
        </div>
        <div class="homeback"><a href="index.jsp">Back to Home</a></div>
    </div>
    <p class="para">Already have an account? <a href="sign-in.jsp">Login here</a></p>
</body>
</html>