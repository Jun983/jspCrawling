package util;

public class JSFunction {
	
	// 원한s msg 문구를 alert()함수로 출력 후 해당 url로 이동
	public static String executeAlert(String msg, String url) {
		String script = "";
		
		try {
			script = "<script>"
					 + "	alert('" + msg + "');"
					 + "	location.href = '"+ url +"';"
					 + "</script>";
		} catch(Exception e) {
			System.out.println("[JSFunction] error: " + e.getMessage());
			e.printStackTrace();
		}
		
		return script;
	}

}	
