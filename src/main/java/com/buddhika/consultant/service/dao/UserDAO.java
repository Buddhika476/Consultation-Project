package com.buddhika.consultant.service.dao;

import java.sql.SQLException;
import java.util.List;

import com.buddhika.consultant.service.model.User;

public interface UserDAO {
	
	public boolean addUser(User user) throws SQLException, ClassNotFoundException;
	public boolean editUser(User user) throws SQLException, ClassNotFoundException;
	boolean deleteUser(int userID) throws SQLException, ClassNotFoundException;
	public User fetchSingleUser(int appointmentID) throws SQLException, ClassNotFoundException;
	public List<User> fetchAllUser() throws SQLException, ClassNotFoundException;
	public boolean loginUser(User user)throws SQLException, ClassNotFoundException;
}