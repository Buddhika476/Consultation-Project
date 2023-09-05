package com.buddhika.consultant.service.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.buddhika.consultant.service.dao.dbutils.DbDriverManager;
import com.buddhika.consultant.service.dao.dbutils.DbDriverManagerFactory;
import com.buddhika.consultant.service.model.User;

public class UserDAOImpl implements UserDAO {
	
	public UserDAOImpl() {
		
	}
	
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySql");
		
		return driverManager.getConnection();
	}

	@Override
	public boolean addUser(User user) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		Connection connection = getConnection();
		
		
		String query = "INSERT INTO user(username, password, email, role) VALUES (?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(query) ;
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getRole());
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		return result;
	}
	
	public boolean loginUser(User user) throws ClassNotFoundException, SQLException {
		
		Connection connection = getConnection();
		
		String query = "SELECT * FROM user WHERE username = ? AND password = ? AND role = ?";
		PreparedStatement ps = connection.prepareStatement(query) ;
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getRole());
		
		ResultSet resultSet = ps.executeQuery();
		
		boolean result = resultSet.next();
		
		ps.close();
		connection.close();
		return result;
	}

}
