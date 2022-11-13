package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/transport";
	private static String user ="root";
	private static String pass ="Methya4034*";
	private static Connection con;
	
	public static Connection  getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}catch(Exception e) {
			System.out.println("Database connection is not success!");
		}
		
		return con;
	}
}
