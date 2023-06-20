package util;

import java.io.PrintWriter;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
						  + "<script>"
						  + "	alert(;" + msg + "');"
						  + "</script>";
			out.println(script);
		} catch(Exception e) {
			System.out.println("[JSFunction] error: " + e.getMessage());
			e.printStackTrace();
		}
	}

}	
