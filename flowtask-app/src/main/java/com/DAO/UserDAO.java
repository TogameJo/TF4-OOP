package com.DAO;

import com.entity.User;

//tao interface userDAO
public interface UserDAO {
	public boolean userRegister(User us);  //trả về true hoặc false để cho biết việc đăng ký người dùng có thành công hay không.

	public User login(String username,String password);
}
