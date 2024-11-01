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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            HttpSession session = request.getSession();

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if(username.equals("admin6688") && password.equals("admin6666")){   //tk admin
                response.sendRedirect("admin/home.jsp");   //giao dien admin
            }else{
                User us = dao.login(username,password);
                if(us != null){
                    session.setAttribute("userobj",us);    //neu ton tai tk tra ve giao dien user
                    response.sendRedirect("home.jsp");
                }else{
                    session.setAttribute("failedmsg","Username or password is invalid");   //khong thi bao loi
                    response.sendRedirect("sign-in.jsp");
                }
                response.sendRedirect("home.jsp");  //k phai admin tra ve user
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
