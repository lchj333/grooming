package com.grooming.control;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MysqlConnectionTest {
	private static final String DRIVER = "com.mysql.jdbc.Driver"; 
	private static final String URL = "jdbc:mysql://localhost:3306/goott7?uesSSL=false";
	private static final String USERNAME = "scott";
	private static final String PASSWORD = "tiger";
	
	@Test
	public void testConn() throws ClassNotFoundException {
			Class.forName(DRIVER);
			
			try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD)){
				System.out.println("conn : "+conn);
			} catch (Exception e) {
				// TODO: handle exception
			}
			 
	}
}
