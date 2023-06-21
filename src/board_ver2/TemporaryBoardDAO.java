package board_ver2;

import java.util.ArrayList;

import util.DatabaseUtil;

public class TemporaryBoardDAO extends DatabaseUtil {
	public void createBoard(String tableName) { // 임시 테이블 생성
		String query = "CREATE TABLE " + tableName + " ("
					 + "	num INT AUTO_INCREMENT PRIMARY KEY,"
					 + "	site VARCHAR(10),"
					 + "	title VARCHAR(1000),"
					 + "	content VARCHAR(5000),"
					 + "	link VARCHAR(2000)"
					 + ");";
		try {
			stmt = conn.createStatement();//쿼리문 생성 
			if(stmt.execute(query))
				System.out.println("Create Table Success!!");
			// rs = stmt.executeQuery(query);//쿼리 실행 
		} catch(Exception e) {
			System.out.println("Exception [createBoard]: " + e.getMessage());
			e.printStackTrace();
		}	
	}
	
	/*
	public int insertBoard(String tableName, BoardDTO dto) { // 테이블 이름
		int result = 0;
		ArrayList<BoardDTO> arr = null;
		String query = "INSERT INTO " + tableName + " VALUES(seq_board_num.nextval,?,?,?,?,?)";
		
		// site, title, content, regidate, link, id
		
		try {
			for(int i = 0; i < 2; i++) {
				pstmt.setString(i, dto.getSite());
				pstmt.setString(2, dto.getTitle());
				pstmt.setString(3, dto.getContent());
				pstmt.setString(4, dto.getRegidate());
				pstmt.setString(5, dto.getLink());
				pstmt.setString(6, dto.getId());
				result = pstmt.executeUpdate();
			}
			
		} catch (Exception e) {
			System.out.println("Exception [insertBoard]: " + e.getMessage());
			e.printStackTrace();
		}
		
		return result;
	}
	*/
}
