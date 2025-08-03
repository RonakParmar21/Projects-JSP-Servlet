package com.contact.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionManager {
	
	public static Connection connection;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String user = "root";
			String password = "admin";
			String url = "jdbc:mysql://localhost:3306/projectsjspservlet";
			
			connection = DriverManager.getConnection(url, user, password);
			
		} catch(Exception e) {
			System.out.println("Exception is : " + e);
		}
		
		return connection;
	}
	
}
