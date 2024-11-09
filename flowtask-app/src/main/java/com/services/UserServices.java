package com.services;

import com.DAO.UserDAOImpl;
import com.entity.User;

import java.util.List;

public class UserServices {
    private final UserDAOImpl userDao;

    // Khởi tạo UserService với UserDAOImpl
    public UserServices(UserDAOImpl userDAO) {
        this.userDao = userDAO;  // Sử dụng đối tượng UserDAOImpl đã được truyền vào
    }

    public boolean deleteUser(int userId) {
        return userDao.deleteUser(userId);
    }

    public boolean deactivateUser(int userId) {
        return userDao.updateUserStatus(userId, false);
    }

    public boolean activateUser(int userId) {
        return userDao.updateUserStatus(userId, true);
    }

    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }
}
