package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

//dao = database acess object
public class UserDAO extends DatabaseUtil {
	
	private Connection conn; // 데이터베이스에 접근하기 위한 객체
	private PreparedStatement pstmt; //쿼리문 넣기 위한 객체
	private ResultSet rs; // 정보를 담을 수 있는 객체
	
	public int insertMember(UserDTO dto) { // 회원가입 (성공)
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
		} catch(Exception e){
			System.out.println("Exception [insertMember]: " + e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	 public int login(String id, String password) { // 은희 작업중
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
         } catch(Exception e) {
        	 System.out.println("Exception [login]: " + e.getMessage());
             e.printStackTrace();
         }
         return result;
     }
	 
	 public String findId(UserDTO dto) { // 아이디 반환 (성공)
		 String result = "";
		 String SQL = "SELECT id FROM member WHERE name=? and email=?";
         try { 
             conn = getConnection();
             pstmt = conn.prepareStatement(SQL);
             
             pstmt.setString(1, dto.getName());
             pstmt.setString(2, dto.getEmail());
             
             rs = pstmt.executeQuery();
            
             if (rs.next()) {
            	    result = rs.getString("id");
            	    System.out.println("id 반환 성공!!");
            	} else {
            	    System.out.println("해당하는 아이디가 없습니다.");
            	}
             System.out.println("id 반환 성공!!");
         } catch(Exception e) {
        	 System.out.println("Exception [findId]: " + e.getMessage());
             e.printStackTrace();
         }
		 
		 return result;
	 }
	 
	 public int deleteMember(String id) { // 계정 삭제
		 int result = 0;
		 String SQL = "DELETE FROM member WHERE id=?";
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, id);
				result = pstmt.executeUpdate();		
			} catch(Exception e){
				System.out.println("Exception [deleteMember]: " + e.getMessage());
				e.printStackTrace();
			}
			return result;
	 }
	 
	 public int updateMember(String id, String grade) { // 계정을 선택하여 원하는 등급으로 조정 (성공)
		 int result = 0;
		 String SQL = "UPDATE member SET grade=? WHERE id=?";
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, grade);
				pstmt.setString(2,  id);
				result = pstmt.executeUpdate();		
			} catch(Exception e){
				System.out.println("Exception [updateMember]: " + e.getMessage());
				e.printStackTrace();
			}
			return result;
	 }

}
