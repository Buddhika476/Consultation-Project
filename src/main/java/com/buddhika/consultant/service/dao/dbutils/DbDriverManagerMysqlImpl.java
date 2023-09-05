package com.buddhika.consultant.service.dao.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbDriverManagerMysqlImpl implements DbDriverManager {

public Connection getConnection() throws ClassNotFoundException, SQLException {
	
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/top_jobs";
	String userName = "root";
	String password = "653221";
	
	return DriverManager.getConnection(url, userName, password);
	
	}

}
