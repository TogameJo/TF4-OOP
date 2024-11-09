package com.DAO;

import com.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User us) {
		boolean f = false;
		try {
			String sql = "INSERT INTO user(username,email,phonenum,password) VALUES(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhonenum());
			ps.setString(4, us.getPassword());

			int i = ps.executeUpdate(); //neu insert thanh cong 1 hang se chuyen sang 1 khong thi se ve 0
			if(i==1) {
				f=true; // Thành công nếu có 1 hàng được thêm
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String username, String password) {
		User us = null;
		boolean f = false;
		try{
			String sql = "select * from user where username=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
//			ps.setBoolean(3, true);

			ResultSet rs = ps.executeQuery();
//			chứa ket qua cua cac truy van trong JDBC(select,...)
			while(rs.next()){
				us = new User(); //tao user moi neu con hang trong bang
				us.setId(rs.getInt(1));  //lay gia tri cot id gan cho user
				us.setName(rs.getString(2)); //tuong tu
				us.setEmail(rs.getString(3));
				us.setPhonenum(rs.getString(4));
				us.setPassword(rs.getString(5));

			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return us;
	}

	@Override
	public boolean updateUserStatus(int userId, boolean isActive) {
		boolean isUpdated = false;
		try {
			String sql = "UPDATE user SET is_active = ? WHERE id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setBoolean(1, isActive);
			ps.setInt(2, userId);

			int i = ps.executeUpdate();
			if (i == 1) {
				isUpdated = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isUpdated;
	}

	@Override
	public List<User> getAllUsers() {
		List<User> users = new ArrayList<>();
		try {
			String sql = "SELECT * FROM user";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setPhonenum(rs.getString("phonenum"));
				user.setPassword(rs.getString("password"));
				user.setActive(rs.getBoolean("is_active"));
				users.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}

	@Override
	public boolean deleteUser(int userId) {
		boolean isDeleted = false;
		String sql = "DELETE FROM user WHERE id = ?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setInt(1, userId);

			int rowsAffected = ps.executeUpdate();
			if (rowsAffected == 1) {
				isDeleted = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isDeleted;
	}

}
