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
    <link rel="icon" type="image/png" href="../images/favicon/favicon-96x96.png">
    <!-- reset css -->
    <link rel="stylesheet" href="../all_component/reset.css">
    <!-- styles -->
    <link rel="stylesheet" href="../all_component/styles.css">
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sen:wght@400..800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Flex:opsz,wght@8..144,100..1000&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    <!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Home</title>
    <link rel="favicon" href="">
</head>
<body style="height: 2800px; overflow: auto;"  class="main_body">
<!-- <div class="mess icon-bottom">
    <a href="https://www.facebook.com/camondaghe/" target="_blank">
        <i class="fa-brands fa-facebook-messenger"></i>
    </a>
    <a href="">
        <i class="fa-solid fa-phone"></i>
    </a>
</div> -->
<!-- header -->
<header class="header fixed">
    <div class="main-content">
        <div class="body">
            <!-- logo -->
            <a href="" target="_self"><img src="../images/logo2.png" alt="logo" class="logo"></a>
            <!-- nav -->
            <nav class="nav">
                <ul>
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about-us" class="">About</a></li>
                    <li><a href="#job-mana" class="">Feedback</a></li>
                    <li><a href="#footer" class="">Contact</a></li>
                    <li><a href="./management.jsp" class="manager-main-menu" >Manager</a></li>
                </ul>
            </nav>
            <!-- btn -->
            <div class="action">
                <div>
                    <img src="../images/admin_img.jpg" alt="avt" class="admin-main-avatar" onclick="toggleMenu()">
                </div>
                <div class="sub-menu-wrap" id="Submenu">
                    <div class="sub-menu">
                        <div class="user-info">
                            <img class="user-pics-info" src="../images/admin_img.jpg" alt="avt">
                            <h2 class="user-name-info">Admin</h2>
                        </div>
                        <hr>
                        <a href="#!" class="menu-section">
                            <div class="menu-section-icon"><i class="fa-solid fa-user"></i></div>
                            <p>Edit Profile</p>
                            <span>></span>
                        </a>

                        <a href="#!" class="menu-section">
                            <div class="menu-section-icon"><i class="fa-solid fa-gear"></i></div>
                            <p>Setting & Privacy</p>
                            <span>></span>
                        </a>

                        <a href="#!" class="menu-section">
                            <div class="menu-section-icon"><i class="fa-solid fa-question"></i></div>
                            <p>Help & Support</p>
                            <span>></span>
                        </a>

                        <a href="../sign-in.jsp" class="menu-section">
                            <div class="menu-section-icon"><i class="fa-solid fa-right-from-bracket"></i></div>
                            <p>Log Out</p>
                            <span>></span>
                        </a>
                    </div>
                </div>
            </div>
            <script>
                let Submenu = document.getElementById("Submenu");
                function toggleMenu(){
                    Submenu.classList.toggle("open-wrap")
                }
            </script>
        </div>
    </div>
</header>

<!-- main-->
<div class="hero" id="Home">
    <div class="main-content">
        <div class="body">
            <div class="hero-element">
                <div class="header">
                    <div class="hero-title text-color-black">
                        <h1>
                            The all-in-one
                            <br>
                            Job management website
                        </h1>
                    </div>
                </div>
                <div class="space"></div>
                <div class="hero-txt">
                    <p class="text-color-black">
                        Run your field service business in one single system with TaskFlow.
                        <br>
                        Available on iOS, Android and web browsers
                    </p>
                </div>
                <div class="hero-btn">
                    <a href="./sign-in.jsp" target="_parent" class="join-us-btn btn">
                        Join us
                    </a>
                    <a href="#!">See BigChange in action</a>
                </div>
                <div class="hero-icon">
                    <div class="icon-text">
                        <a href="#!" class="icon_introduce" style="cursor: pointer;">
                            <div class = "icon-bgr"><i class="fa-solid fa-calendar"></i></div>
                        </a>
                        <p>Schedule</p>
                    </div>
                    <div class="icon-text">
                        <a href="#!" class="icon_introduce" style="cursor: pointer;">
                            <div class = "icon-bgr"><i class="fa-solid fa-file"></i></div>
                        </a>
                        <p>Worksheet</p>
                    </div>
                    <div class="icon-text">
                        <a href="#!" class="icon_introduce" style="cursor: pointer;">
                            <div class = "icon-bgr"> <i class="fa-solid fa-clipboard-check"></i></div>
                        </a>
                        <p>Job confirmations</p>
                    </div>
                    <div class="icon-text">
                        <a href="#!" class="icon_introduce" style="cursor: pointer;">
                            <div class = "icon-bgr"><i class="fa-solid fa-shield"></i></div>
                        </a>
                        <p>Security</p>
                    </div>
                    <div class="icon-text">
                        <a href="#!" class="comment" style="cursor: pointer;">
                            <div class = "icon-bgr"><i class="fa-solid fa-comments"></i></div>
                        </a>
                        <p>Comments</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- about us -->
<section id ="about-us">
    <div class="about-content">
        <div class="about-title title-section">
            <h2>About us</h2>
        </div>
        <div class="about-body">
            <div class="about-article">
                <p>
                    Welcome to TaskFlow!
                </p>
                <p>
                    Your all-in-one job management solution designed for today's fast-paced field service
                    industry. Our mission is to empower teams and individuals by providing a powerful, user-friendly platform
                    that simplifies your work management process, helping you stay organized, efficient, and on top of every task.
                </p>
                <p>
                    From job scheduling and worksheets to security features and real-time comments, TaskFlow is equipped with
                    tools that let you manage every aspect of your business seamlessly.
                </p>
                <p>
                    Join TaskFlow today and transform the way you work.
                </p>
                <div class="about-btn">
                    <a href="#!">Read More</a>
                </div>
            </div>
        </div>
        <div class="about-img">
            <img src="../images/about-us-img.jpg" alt="About us">
        </div>
        <div class="about-social">
            <a href="#!"><i class="fa-brands fa-facebook"></i></a>
            <a href="#!"><i class="fa-brands fa-twitter"></i></a>
            <a href="#!"><i class="fa-brands fa-instagram"></i></a>
        </div>
    </div>
</section>
<!-- Feedback -->
<section id="job-mana">
    <div class="job-mana-content">
        <div class="job-mana-title title-section">
            <h2>Feedback</h2>
        </div>
        <div class="job-content-top">
            <!-- left -->
            <div class="info">
                <h3 class="heading">Comprehensive Task Solutions</h3>
                <p class="desc">
                    Manage tasks efficiently with cutting-edge tools and elevate your team's productivity for the next future carrer.</p>
            </div>
            <!-- right -->
            <div class="controls">
                <button class="control-btn">
                    <img src="../images/pre.png" alt="">
                </button>
                <button class="control-btn">
                    <img src="../images/nxt.png" alt="">
                </button>
            </div>
        </div>
        <!-- feedback -->
        <div class="job-content-bottom">
            <!-- 1 -->
            <div class="feed-list">
                <img src="../images/introlistimg1.avif" alt="anh1" class="thumb">
                <div class="feedback">
                    <div class="feed-head">
                        <h3 class="title">Reliable and efficient.</h3>
                        <div class="rating">
                            <img src="../images/star-rating.png" alt="" class="star" >
                            <span class="star-value">4.9</span>
                        </div>
                    </div>
                    <div class="feed-body"><p class="article break-all">"I use it every day for work. It’s an excellent tool with user-friendly features."</p></div>
                    <div class="user-rating">
                        <h3 class="user-name">Olivia Smith</h3>
                        <img src="../images/sarah.avif" alt="useravt" class="user-avt">
                    </div>
                </div>
            </div>
            <!-- 2 -->
            <div class="feed-list">
                <img src="../images/introlistimg2.avif" alt="anh1" class="thumb" >
                <div class="feedback">
                    <div class="feed-head">
                        <h3 class="title">Perfect for my daily tasks!</h3>
                        <div class="rating">
                            <img src="../images/star-rating.png" alt="" class="star" >
                            <span class="star-value">4.8</span>
                        </div>
                    </div>
                    <div class="feed-body"><p class="article break-all">"With this tool, I save a lot of time at work. Highly recommend!"</p></div>
                    <div class="user-rating">
                        <h3 class="user-name">Liam Brown</h3>
                        <img src="../images/liam.avif" alt="useravt" class="user-avt">
                    </div>
                </div>
            </div>
            <!-- 3 -->
            <div class="feed-list">
                <img src="../images/introlistimg3.avif" alt="anh1" class="thumb" >
                <div class="feedback">
                    <div class="feed-head">
                        <h3 class="title">Enhanced my productivity!</h3>
                        <div class="rating">
                            <img src="../images/star-rating.png" alt="" class="star" >
                            <span class="star-value">5</span>
                        </div>
                    </div>
                    <div class="feed-body"><p class="article break-all">"It's easy to use, and the functions are just what I need."</p></div>
                    <div class="user-rating">
                        <h3 class="user-name">James Anderson</h3>
                        <img src="../images/premium_photo-1672239496290-5061cfee7ebb.avif" alt="useravt" class="user-avt">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer -->
<section id="footer">
    <div class="title-section-contact">Contact</div>
    <div class="container">
        <div class="footer-top">
            <!-- 1 -->
            <div class="footer-column">
                <div class="footer-column-logo">
                    <a href=""><img src="../images/logo.png" alt="logo" class="logo1"></a>
                    <p class="logo2">TaskFlow</p>
                </div>
                <p class="footer-desc">"Leading the way in quality and innovation, TaskFlow is dedicated to delivering the best solutions for all your needs."</p>
            </div>
            <!-- 2 -->
            <div class="footer-column">
                <h3 class="footer-heading">Support</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#!" class="footer-link">FAQs</a>
                    </li>
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Help center</a>
                    </li>
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Acccount setting</a>
                    </li>
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Contact support</a>
                    </li>
                </ul>
                <h3 class="footer-heading">Policies</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Privacy Policy</a>
                    </li>
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Terms of Service</a>
                    </li>
                </ul>
            </div>
            <!-- 3 -->
            <div class="footer-column">
                <h3 class="footer-heading">Security</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#!" class="footer-link">User Privacy</a>
                    </li>
                    <li class="footer-item">
                        <a href="#!" class="footer-link">Security Features Overview</a>
                    </li>
                </ul>
                <h3 class="footer-heading">Our location</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="https://www.google.com/maps/place/H%E1%BB%8Dc+vi%E1%BB%87n+C%C3%B4ng+ngh%E1%BB%87+B%C6%B0u+ch%C3%ADnh+vi%E1%BB%85n+th%C3%B4ng/@20.980918,105.7848416,17z/data=!3m1!4b1!4m6!3m5!1s0x3135accdd8a1ad71:0xa2f9b16036648187!8m2!3d20.980913!4d105.7874165!16s%2Fg%2F12168p16?entry=ttu&g_ep=EgoyMDI0MTAyMy4wIKXMDSoASAFQAw%3D%3D" target="_blank" class="footer-link">View Our Locations</a>
                    </li>
                </ul>
            </div>
            <!-- 4 -->
            <div class="footer-column">
                <h3 class="footer-heading">Stay In Touch</h3>
                <div class="footer-social">
                    <a href="https://www.facebook.com/camondaghe/" title="https://www.facebook.com/camondaghe/" target="_blank"  class="footer-social-btn"><i class="fa-brands fa-facebook" style="color:#0865ff;"></i></a>
                    <a href="https://www.instagram.com/ojemagot_04/" title="https://www.instagram.com/ojemagot_04/" target="_blank" class="footer-social-btn"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/togame-jo-18821931a/" title="https://www.linkedin.com/in/togame-jo-18821931a/" target="_blank" class="footer-social-btn"><i class="fa-brands fa-linkedin-in"></i></a>
                    <a href="tel:+84398305308" title="+84398305308" target="_blank" class="footer-social-btn"><i class="fa-solid fa-phone"></i></a>
                </div>

                <h3 class="footer-heading">Subscribe</h3>
                <p class="footer-desc">Subscribe our newletter for the latest update of TaskFlow</p>

                <form class="footer-form" action="">
                    <input class="footer-form-imput" type="email" placeholder="Enter Your Email">
                    <input class="footer-form-submit" type="submit" value="Subcribe">
                </form>
            </div>
        </div>

        <!-- footer bottom -->
        <div class="footer-copyright">
            <p class="footer-copy-text">
                2021 GDN. Copyright and All rights reserved.
            </p>
        </div>
    </div>
</section>
</body>
</html>