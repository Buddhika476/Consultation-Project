package com.buddhika.consultant.service.dao.dbutils;

public class DbDriverManagerFactory {
	
	public DbDriverManager getDbDriver(String databaseType) {
		
		if(databaseType.equals("MySql")) {
			return new DbDriverManagerMysqlImpl();
		}
		else{
			return null;
		}
	}

}
