package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

//dao = database acess object
public class UserDAO {
	Connection conn;
	PreparedStatement pstmt;
	
	
	public int join(UserDTO dto) {
		int result = 0;
		String SQL = "INSERT INTO member VALUES (?,?,?,?,?,?)";
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId()); 
			pstmt.setString(3, dto.getPassword()); 
			pstmt.setString(4, dto.getGrade()); 
			pstmt.setString(5, dto.getNickname()); 
			pstmt.setString(6, dto.getEmail()); 
			
			result = pstmt.executeUpdate();		
		}catch(Exception e){
			System.out.println("Exception [join]: " + e.getMessage());
			e.printStackTrace();
		}
		return result;
	}

}
