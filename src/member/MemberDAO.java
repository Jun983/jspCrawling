package member;

import util.DatabaseUtil;

public class MemberDAO extends DatabaseUtil {
	
	// getConnection() 함수 지워짐과 동시 그 기능을 DatabaseUtil 생성자에 넣어
	// 생성됨과 동시에 db연결이 되겠끔 코드 수정
	
	public int insertMember(MemberDTO dto) { // member 테이블에 회원 정보 저장
		int result = 0;
		String query = "INSERT INTO member VALUES (?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			
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
	
	public MemberDTO selectMemberLogin(String id, String password) { // member 테이블에 id와 password와 관련된 데이터 추출
        MemberDTO dto = null;
        String query = "SELECT * FROM member WHERE id=? AND password=?";
        try { 
        	pstmt = conn.prepareStatement(query);
        	
        	pstmt.setString(1, id);
        	pstmt.setNString(2, password);
        	
        	rs = pstmt.executeQuery();
        	if(rs.next()) {
        		dto = new MemberDTO();
        		dto.setName(rs.getString(1)); 
        		dto.setId(rs.getString(2));
        		dto.setPassword(rs.getString(3));
        		dto.setGrade(rs.getString(4));
        		dto.setNickname(rs.getString(5));
        		dto.setEmail(rs.getString(6));
        	}
        } catch(Exception e) {
        	System.out.println("Exception [selectMemberLogin]: " + e.getMessage());
        	e.printStackTrace();
        }
        return dto;	
	}
	 
	public String selectMemberFindId(MemberDTO dto) { // member 테이블에 name, email과 관련된 id 추출
		String result = "";
		String query = "SELECT id FROM member WHERE name=? and email=?";
        try { 
        	pstmt = conn.prepareStatement(query);
             
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getEmail());

            rs = pstmt.executeQuery();
            
            if (rs.next())
            	result = rs.getString("id");
        } catch(Exception e) {
        	System.out.println("Exception [selectMemberFindId]: " + e.getMessage());
            e.printStackTrace();
        }
		 
		return result;
	}
	 
	public int deleteMember(String id) { // member 테이블에 id와 관련된 데이터 삭제
		int result = 0;
		String query = "DELETE FROM member WHERE id=?";
			
		try {
			pstmt = conn.prepareStatement(query);
				
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();		
		} catch(Exception e){
			System.out.println("Exception [deleteMember]: " + e.getMessage());
			e.printStackTrace();
		}
		
		return result;
	}
	 
	public int updateMember(String id, String grade) { // member 테이블에 id와 관련된 grade 데이터 수정
		int result = 0;
		String query = "UPDATE member SET grade=? WHERE id=?";
		 
		try {
			pstmt = conn.prepareStatement(query);
				
			pstmt.setString(1, grade);
			pstmt.setString(2,  id);
			
			result = pstmt.executeUpdate();		
		} catch(Exception e){
			System.out.println("Exception [updateMember]: " + e.getMessage());
			e.printStackTrace();
		}
			
		return result;
	}
	 
	 public int updateMemberResetPassword(String id, String password) { // member 테이블에 id와 관련된 password 데이터 수정
		 int result = 0;
		 String query = "UPDATE member SET password=? WHERE id=?";
		 
		 try {
			 pstmt = conn.prepareStatement(query);
			 
			 pstmt.setString(1, password);
			 pstmt.setString(2, id);
			 
			 result = pstmt.executeUpdate();
		 } catch(Exception e) {
			 System.out.println("Exception [updateMemberResetPassword]: " + e.getMessage());
			 e.printStackTrace();
		 }
		 return result;
	 }
}
