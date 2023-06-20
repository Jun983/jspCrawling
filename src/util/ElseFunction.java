package util;

public class ElseFunction {
	public static String showID(String id) { // 아이디 보여줄 때 홀수 인덱스만 *로 바꿔주는 메소드
		String showId = "";
		
		for(int i = 0; i < id.length(); i++){
			if(i % 2 == 1)
				showId += '*';
			else
				showId += id.charAt(i);
		}
		return showId;
	}
}
