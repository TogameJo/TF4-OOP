package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect { //kết nối đến database
	private static Connection conn; //lưu trữ các kết nối đóng khi k cần tránh rò rỉ tài nguyên
    public static Connection getConn(){
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver"); //sd driver database ?? ClassNotFoundException/SQLException
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskflow-app","root","B22dcat143abc123");
    	}catch(Exception e) {
    		e.printStackTrace();   
    	}
        return conn;
    }
}