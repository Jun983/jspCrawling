package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

//dao = database acess object
public class UserDAO extends DatabaseUtil{
	
	private Connection conn; // 데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt; //쿼리문 넣기 위한 객체
	private ResultSet rs; // 정보를 담을 수 있는 객체
	
	public int insertMember(UserDTO dto) {
		int result = 0;
		String SQL = "INSERT INTO member VALUES (?,?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId()); 
			pstmt.setString(3, dto.getPassword()); 
			pstmt.setString(4, dto.getGrade()); 
			pstmt.setString(5, dto.getNickname()); 
			pstmt.setString(6, dto.getEmail()); 
			
			result = pstmt.executeUpdate();		
		}catch(Exception e){
			System.out.println("Exception [insertMember]: " + e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	 public int login(String id, String password) {
         int result = -2;
		 String SQL = "SELECT password FROM member WHERE id=?";
         try { 
             conn = getConnection();
             pstmt = conn.prepareStatement(SQL);
             pstmt.setString(1, id);
             rs = pstmt.executeQuery();
             if(rs.next()) {
                 if(rs.getString(1).equals(password)) {
                     result = 1; //로그인 성공
                 }
                 else
                	 result = -1;
             }
             return -1;
         }catch(Exception e) {
        	 System.out.println("Exception [login]: " + e.getMessage());
             e.printStackTrace();
         }
         return result;
     }

}
