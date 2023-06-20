package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DatabaseUtil {
	
	public Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/crawling?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("DB 연동 성공!");
			
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
					
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("db 연동 에러");
		}
		return null;
	}
}
