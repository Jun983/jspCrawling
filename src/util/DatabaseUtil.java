package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.Statement;

public class DatabaseUtil {
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			String dbURL = "jdbc:mysql://localhost:3306/crawling?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);			
		} catch(Exception e) {
			System.out.println("Exception [getConnection]: " + e.getMessage());
			e.printStackTrace();
		}
		
		return conn;
	}
}
