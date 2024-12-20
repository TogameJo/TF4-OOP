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
  <title>Admin</title>
  <link rel="favicon" href="">
</head>
<body>
<header class="header fixed" style="position: static;">
  <div class="main-content">
    <div class="body" style="display: flex;justify-content: space-between;">
      <!-- logo -->
      <a href="./home.html" target="_self"><img src="../images/logo2.png" alt="logo" class="logo"></a>
      <!-- nav -->
      <div class="search">
        <input type="text" placeholder="Search">
        <a><i class="fa-solid fa-magnifying-glass"></i></a>
      </div>
      <!-- btn -->
      <div class="action">
        <div>
          <img src="../images/admin_img.jpg" alt="avt" class="admin-main-avatar" onclick="toggleMenu()">
        </div>
        <div class="sub-menu-wrap" id="Submenu" style="position: absolute; z-index: 1;">
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
<div class="header2">
  <div class="home home1">
    <i class="fa-solid fa-house"></i>
    <a><p>Home</p></a>
  </div>
  <div class="home user">
    <i class="fa-solid fa-user"></i>
    <a><p>User</p></a>
  </div>
  <div class="home job">
    <i class="fa-solid fa-clipboard"></i>
    <a><p>Job</p></a>
  </div>
</div>
<div class="mn-hero">
  <div class="body">
    <div class="user-table">
      <table>
        <thead>
        <tr>
          <th>ID</th>
          <th>User name</th>
          <th>Email</th>
          <th>Properties</th>
          <th>Activity</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${userList}">
          <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.isActive ? 'Hoạt động' : 'Vô hiệu'}</td>
            <td>
              <form action="UserController" method="post" style="display: inline;">
                <input type="hidden" name="userId" value="${user.id}">
                <input type="hidden" name="action" value="delete">
                <button type="submit" onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này?')">Xóa</button>
              </form>
              <form action="UserController" method="post" style="display: inline;">
                <input type="hidden" name="userId" value="${user.id}">
                <input type="hidden" name="action" value="${user.isActive ? 'deactivate' : 'activate'}">
                <button type="submit">
                    ${user.isActive ? 'Vô hiệu hóa' : 'Kích hoạt'}
                </button>
              </form>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

  </div>
</div>
</body>
</html>