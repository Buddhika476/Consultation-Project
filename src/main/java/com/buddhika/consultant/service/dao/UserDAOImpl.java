package com.buddhika.consultant.service.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	
	/*public boolean addUserAdmin(User user) throws SQLException, ClassNotFoundException {
		
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
	*/
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
	
	@Override
	public boolean editUser(User user) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "UPDATE user SET username=?, email=?, password=?, role=? WHERE userID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getPassword());
		ps.setString(4, user.getRole());
		ps.setInt(5, user.getUserID());
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		
		return result;
	}


	@Override
	public boolean deleteUser(int userID) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "DELETE FROM user WHERE userID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, userID);
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		
		return result;
	}
	
	@Override
	public User fetchSingleUser(int userID) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "SELECT * FROM user WHERE userID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, userID);
		
		ResultSet rs = ps.executeQuery();
		
		User user = new User();
		
		while(rs.next()) {
			user.setUserID(rs.getInt("userID"));
			user.setUsername(rs.getString("usernae"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setRole(rs.getString("role"));
		}
		
		ps.close();
		connection.close();
		return user;
	}
	
	@Override
	public List<User> fetchAllUser() throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		//firstName, lastName, email, contactNumber, appointmentDate, country, consulant
		String query = "SELECT * FROM user";
		
		Statement st = connection.createStatement();
		
		List<User> userList = new ArrayList<User>();
		
		ResultSet rs = st.executeQuery(query);
		
		while(rs.next()) {
			
			User user = new User();
			
			user.setUserID(rs.getInt("userID"));
			user.setUsername(rs.getString("username"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setRole(rs.getString("role"));
			
			userList.add(user);
		}
		
		st.close();
		connection.close();
		return userList;
	}

}
