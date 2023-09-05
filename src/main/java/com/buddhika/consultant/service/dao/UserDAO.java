package com.buddhika.consultant.service.dao;

import java.sql.SQLException;

import com.buddhika.consultant.service.model.User;

public interface UserDAO {
	
	public boolean addUser(User user) throws SQLException, ClassNotFoundException;
	public boolean loginUser(User user)throws SQLException, ClassNotFoundException;
}