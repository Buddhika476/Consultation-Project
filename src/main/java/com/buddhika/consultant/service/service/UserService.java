package com.buddhika.consultant.service.service;

import com.buddhika.consultant.service.dao.UserDAO;
import com.buddhika.consultant.service.dao.UserDAOImpl;
import com.buddhika.consultant.service.model.User;

import java.sql.SQLException;

public class UserService {
	
	private static UserService UserServiceObj;
	
	private UserService() {
		
	}
	
	public synchronized static UserService getUserService() {
		if(UserServiceObj == null) {
			UserServiceObj = new UserService();
		}
		return UserServiceObj;
	}
	
	private UserDAO getUserDAO() 
	{
		return new UserDAOImpl();
	}
	
	public boolean addUser(User user) throws ClassNotFoundException, SQLException {
		return getUserDAO().addUser(user);
		
	}
	
	public boolean loginUser(User user) throws ClassNotFoundException, SQLException {
		return getUserDAO().loginUser(user);
	}
}