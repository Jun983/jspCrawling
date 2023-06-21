<%@page import="board_ver2.TemporaryBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 입력한 키워드와 크롤링 할 내용 횟수를 변수에 저장
	String keyword = request.getParameter("keyword");
	String num = request.getParameter("num");
	int keywordNum = Integer.parseInt(num);
	
	// 임시 테이블 생성
	TemporaryBoardDAO tt = new TemporaryBoardDAO();
	tt.createBoard("bj");
	tt.close();
	
	// 크롤링 과정
	int pageNum = 1;
	
	String _url;
	String url[] = { "", "" };
	url[0] = "https://search.daum.net/search?w=blog&f=section&SA=tistory&lpp=10&nil_profile=vsearch&nil_src=tistory&q="
	+ keyword + "&DA=PGD&p=" + pageNum;
	url[1] = "https://search.naver.com/search.naver?where=view&sm=tab_jum&query=" + keyword;
				
	String title_save[] = { "div.cont_inner a.f_link_b", "a.api_txt_lines" };
	String content_save[] = { "div.cont_inner p", "div.total_group" };
	String regdate_save[] = { "div.cont_inner span.date", "span.etc_dsc_area span.sub_time" };
	String link_save[] = { "div.cont_inner span.f_l a.f_url",
	"div[class=total_area] a[class=api_txt_lines total_tit _cross_trigger]" };
				
	String _site_type[] = { "tistory", "naver" };
	String _title;
	String _content;
	String _regdate;
	String _link;
	
	
	
	
	
	tt.close();
%>