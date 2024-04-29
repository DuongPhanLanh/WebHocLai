package com.DAO;

import com.entity.user_SV;

public interface userDAO {
	public boolean userRegister(user_SV us);
	
	public boolean checkUser(String me);
	
	public user_SV login(String gmail, String password);
}
