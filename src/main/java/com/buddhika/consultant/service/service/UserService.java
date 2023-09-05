package com.buddhika.consultant.service.service;

import com.buddhika.consultant.service.dao.UserDAO;
import com.buddhika.consultant.service.dao.UserDAOImpl;
import com.buddhika.consultant.service.model.User;

import java.sql.SQLException;
import java.util.List;

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
	
	public boolean editUser(User user) throws ClassNotFoundException, SQLException {
		return getUserDAO().editUser(user);
	}

	public boolean deleteUser(int userID) throws ClassNotFoundException, SQLException {
		return getUserDAO().deleteUser(userID);
	}

	public User fetchSingleUser(int userID) throws ClassNotFoundException, SQLException {
		return getUserDAO().fetchSingleUser(userID);
	}
	
	public List<User> fetchAllUser() throws ClassNotFoundException, SQLException {
		return getUserDAO().fetchAllUser();
	}
}