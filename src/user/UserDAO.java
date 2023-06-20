package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

//dao = database acess object
public class UserDAO {
	
		public int join(String name,String id, String password,String grade,String nickname,String email) {
			String SQL = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?)";
			try {
				Connection conn = DatabaseUtil.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, name);
				pstmt.setString(2, id); 
				pstmt.setString(3, password); 
				pstmt.setString(4, grade); 
				pstmt.setString(5, nickname); 
				pstmt.setString(6, email); 
				
				
				return pstmt.executeUpdate();
				
			}catch(Exception e){
				e.printStackTrace();
			}
			return -1;
		}

}
