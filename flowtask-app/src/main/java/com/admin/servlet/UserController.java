package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import com.DB.DBConnect;
import com.DAO.UserDAOImpl;
import com.entity.User;
import com.services.UserServices;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
    private UserServices userService;

    @Override
    public void init() throws ServletException {
        // Khởi tạo kết nối cơ sở dữ liệu và UserService
        UserDAOImpl userDAO = new UserDAOImpl(DBConnect.getConn());
        userService = new UserServices(userDAO);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        // Kiểm tra nếu action không có
        if (action == null || action.isEmpty()) {
            response.sendRedirect("userManagement.jsp?error=action_missing");
            return;
        }

        // Xử lý nếu không có userId hoặc không phải số hợp lệ
        int userId;
        try {
            userId = Integer.parseInt(request.getParameter("userId"));
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Định dạng ID người dùng không hợp lệ.");
            request.getRequestDispatcher("userManagement.jsp").forward(request, response);
            return;
        }

        // Xử lý hành động delete, deactivate, activate
        boolean result = false;
        if ("delete".equals(action)) {
            result = userService.deleteUser(userId);
        } else if ("deactivate".equals(action)) {
            result = userService.deactivateUser(userId);
        } else if ("activate".equals(action)) {
            result = userService.activateUser(userId);
        }

        // Lấy danh sách người dùng cập nhật
        List<User> userList = userService.getAllUsers();
        request.setAttribute("userList", userList);

        // Thêm thông báo kết quả vào request
        if (result) {
            request.setAttribute("success", true);
        } else {
            request.setAttribute("success", false);
        }

        // Chuyển tiếp đến trang userManagement.jsp với danh sách người dùng đã được cập nhật
        RequestDispatcher dispatcher = request.getRequestDispatcher("userManagement.jsp");
        dispatcher.forward(request, response);
    }
}
