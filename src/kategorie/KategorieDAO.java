package kategorie;

import java.util.ArrayList;
import java.util.List;

import member.MemberDTO;
import util.DatabaseUtil;
 
public class KategorieDAO extends DatabaseUtil {
	

	public List<KategorieDTO> getListDAO(String id)
	{
		List<KategorieDTO> kategorieList = new ArrayList<>(); 
		try
		{
			String SQL = "SELECT * FROM kategorie WHERE id='"+id+"'";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				KategorieDTO dto = new KategorieDTO();
				dto.setNum(rs.getInt("num"));
				dto.setKategorie(rs.getString("kategorie"));
				dto.setId(rs.getString("id"));
				
				
				kategorieList.add(dto);
			}
			
			
		} catch(Exception e){
			System.out.println("Exception [getListDAO]: " + e.getMessage());
			e.printStackTrace();
		}
		return kategorieList;
	}
	
	
	
	public int searchKategorie(String kate,String id) {
		String SQL = "SELECT kategorie FROM kategorie WHERE id='"+id+"' and kategorie='"+kate+"'";
		System.out.println("dao영"+kate);
		System.out.println("dao영"+id);
		try {
			pstmt = conn.prepareStatement(SQL);
			//pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(kate)) {
					return 1;
				}//카테고리가 존재 

			}
			return 0;
				
		} catch(Exception e){
			
			System.out.println("Exception [searchKategorie]: " + e.getMessage());
			e.printStackTrace();
			
		}
		
		return -2;
	}
	

	
	
	
	public int insertKategorie(KategorieDTO dto) { 
		int result = 0;
					
			String SQL = "INSERT INTO kategorie (kategorie, id) ";
			SQL += "VALUES (?, ?)";
				
			try {
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, dto.getKategorie());
				pstmt.setString(2, dto.getId()); 

				
				result = pstmt.executeUpdate();		
			} catch(Exception e){
				System.out.println("Exception [insertKategorie]: " + e.getMessage());
				e.printStackTrace();
			}
			return result;
			
		}
	
	
//	public  KategorieDTO deleteKategorie(KategorieDTO rdto) { 
//		int result = 0;
//					
//			//String SQL = "DELETE FROM kategorie WHERE id = ? AND kategorie = ?";
//			String SQL = "DELETE FROM kategorie WHERE id=? and kategorie=?";
//			KategorieDTO dto = new KategorieDTO();
//				
//			try {
//				pstmt = conn.prepareStatement(SQL);
//				
//				pstmt.setString(1, rdto.getKategorie());
//				pstmt.setString(2, rdto.getId()); 
//				result = pstmt.executeUpdate();		
//				while(rs.next())
//				{
//					
//					dto.setNum(rs.getInt("num"));
//					dto.setKategorie(rs.getString("kategorie"));
//					dto.setId(rs.getString("id"));
//					
//				}
//			} catch(Exception e){
//				System.out.println("Exception [insertMember]: " + e.getMessage());
//				e.printStackTrace();
//			}
//			return dto;
//			
//		}


	public  int deleteKategorie(String kate,String id) { 
		int result = 0;
					
			//String SQL = "DELETE FROM kategorie WHERE id = ? AND kategorie = ?";
			String SQL = "DELETE FROM kategorie WHERE id='"+id+"' and kategorie='"+kate+"'";
			//KategorieDTO dto = new KategorieDTO();
				
			try {
				pstmt = conn.prepareStatement(SQL);
//				System.out.println("카테고리"+rdto.getKategorie());
//				System.out.println(rdto.getId());
//				pstmt.setString(1, rdto.getId()); 
//				pstmt.setString(2, rdto.getKategorie());
				
				result = pstmt.executeUpdate();		
 
			} catch(Exception e){
				System.out.println("Exception [deleteKategorie]: " + e.getMessage());
				e.printStackTrace();
			}
			return 0;
			
		}
	
	
	
	
	
}
		
		

	


