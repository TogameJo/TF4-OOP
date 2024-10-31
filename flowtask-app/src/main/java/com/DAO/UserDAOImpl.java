package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.User;

//lớp thực hiện vai trò đăng ký
public class UserDAOImpl implements UserDAO{
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
	        
	        int i = ps.executeUpdate();
	        if(i==1) {
	        	f=true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return f;
	}	
}
