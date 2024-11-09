package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.DAO.UserDAOImpl;
import com.entity.User;

@WebServlet("/RegisterServlet") 
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public static boolean checkPassword(String s) {
        if (s.length() >= 8) {
            boolean hasUpperCase = false;
            boolean hasDigit = false;
            for (int i = 0; i < s.length(); i++) {
                if (Character.isUpperCase(s.charAt(i))) {
                    hasUpperCase = true;
                }
                if (Character.isDigit(s.charAt(i))) {
                    hasDigit = true;
                }
            }
            return hasUpperCase && hasDigit;
        }
        return false;
    }

    // Kiểm tra định dạng số điện thoại
    public static boolean checkphone(String phone) {
        return phone.matches("^\\d{9,10}$"); //9-10 ki tu
    }

    // Kiểm tra định dạng tên người dùng
    public static boolean checkusername(String username) {
        return username.matches("^[a-zA-Z0-9_]{3,20}$"); // Chỉ chứa chữ cái, số và dấu gạch dưới, độ dài 3-20 ký tự
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String phone = request.getParameter("phonenum");
            String password = request.getParameter("password");
            String check = request.getParameter("check");

            HttpSession session = request.getSession();
            if (!checkusername(username)) {
                session.setAttribute("failedmsg", "Invalid username.");
                response.sendRedirect("sign-up.jsp");
                return;
            }

            if (!checkphone(phone)) {
                session.setAttribute("failedmsg", "Invalid phone number.");
                response.sendRedirect("sign-up.jsp");
                return;
            }

            if (!checkPassword(password)) {
                session.setAttribute("failedmsg", "The password must contain at least 8 characters, one uppercase letter, and one digit.");
                response.sendRedirect("sign-up.jsp");
                return;
            }

            if (check == null || !check.equals("on")) {
                session.setAttribute("failedmsg", "Please check Agree & Terms Condition.");
                response.sendRedirect("sign-up.jsp");
                return;
            }
            
            User us = new User();
            us.setName(username);
            us.setEmail(email);
            us.setPhonenum(phone);
            us.setPassword(password);
            us.setActive(true);

            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            boolean f = dao.userRegister(us); // check dki tk

            if (f) {
                session.setAttribute("successmsg", "Registration successfully.");
            } else {
                session.setAttribute("failedmsg", "Something went wrong, please try again.");
            }
            response.sendRedirect("sign-up.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
