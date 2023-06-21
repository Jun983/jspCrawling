package board_ver2;

import util.DatabaseUtil;

public class TemporaryBoardDAO extends DatabaseUtil {
	public void createBoard(String id) { // 임시 테이블 생성
		String query = "CREATE TABLE " + id + " ("
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
			System.out.println("Exception [insertMember]: " + e.getMessage());
			e.printStackTrace();
		}	
	}
	
	public void insertBoard() {
		
	}
}
