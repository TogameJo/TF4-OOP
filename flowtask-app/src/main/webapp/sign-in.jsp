<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Sign-in</title>
</head>
<body class="body_login" style="height: 70rem;">
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
                        <li><a href="sign-in.jsp" target="_parent" class="btn btn-sign-in login_after">Sign In</a></li>
                        <li><a href="sign-up.jsp" target="_parent" class="btn btn-sign-up">Sign Up</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="signin-box">
        <h1>Sign in</h1>
        <form action="LoginServlet" method="post">
            <label for="">User Name</label>
            <input type="text" name="username" id="username" placeholder="" required>
            <label for="">Password</label>
            <input type="password" name="password" id="password" placeholder="" required>
            <input type="submit" value="Submit">
            <div class="homeback"><a href="index.jsp">Back to Home</a></div>
        </form>
    </div>
    <p class="para-2">Not have an account? <a href="sign-up.jsp">Sign up here</a></p>
</body>
</html>