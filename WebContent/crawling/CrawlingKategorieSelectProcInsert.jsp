<%@page import="kategorie.KategorieDAO"%>
<%@page import="kategorie.KategorieDTO"%>
    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="util.JSFunction"%>    
<%@ page import="java.io.PrintWriter" %>    

    
<%
	
//id 값 필요함 + 카테고리가 필요함 
	
	String kategorie = request.getParameter("kategorie");
	System.out.println(kategorie);

	String id = (String)session.getAttribute("id");
	System.out.println("id:"+id);
	
	

	KategorieDAO kategorieDAO = new KategorieDAO();
	KategorieDTO dto = new KategorieDTO();
	
	
	int result = kategorieDAO.searchKategorie(kategorie, id);
	if(result == 1){
		
		System.out.println("카테고리존재");
		PrintWriter script = response.getWriter(); 
		
		
	}
	else if(result == 0){
		KategorieDAO rdao = new KategorieDAO();
		KategorieDTO rdto = new KategorieDTO();
		
		rdto.setKategorie(kategorie);
		rdto.setId(id);
		
		int insert = rdao.insertKategorie(rdto);
		PrintWriter script = response.getWriter(); 
		
		
		rdao.close();
	}
	
	
	
	
	
	kategorieDAO.close();
	
	
	
	
	
	
%>