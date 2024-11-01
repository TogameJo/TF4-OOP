package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

//lớp thực hiện vai trò đăng ký
public class UserDAOImpl implements UserDAO{
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

//	check dang ky
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

//	check dang nhap
	public User login(String username, String password) {
		User us = null;
		boolean f = false;
		try{
			String sql = "select * from user where username=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);

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
}
