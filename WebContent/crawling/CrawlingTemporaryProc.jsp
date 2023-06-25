<%@page import="board_ver3.TemporaryBoardDAO"%>
<%@page import="board_ver3.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.jsoup.Jsoup"%>
<%@ page import="org.jsoup.nodes.Document"%>
<%@ page import="org.jsoup.nodes.Element"%>
<%@ page import="org.jsoup.select.Elements"%>

<%
	// 입력한 키워드와 크롤링 할 내용 횟수를 변수에 저장
	String keyword = request.getParameter("keyword");
	/*String num = request.getParameter("10"); */
	//int keywordNum = Integer.parseInt(num); 
	
	// 임시 테이블 생성
	TemporaryBoardDAO dao = new TemporaryBoardDAO();
	
	//String tableNamE = (String)session.getAttribute("id");
	//System.out.println("세션아이디 잘가져왔"+tableNamE);
	
	//dao.createBoard("nickname");
	//String tablename = "nickname";
	
	//dao.createBoard("nickname");
	String tablename = (String)session.getAttribute("id");
	dao.createBoard(tablename);
	
	//num값으로 몇개의 페이지를 가져올 건지 정
	//이건 무조건 1이여야함 그 이상일 때 반복 중첩으로 데이터가 들어감 
	int num = 1;
	//String keyword = "java";
	
	String _url= "https://search.naver.com/search.naver?where=view&sm=tab_jum&query=" + keyword;
	int page_num = 1;
	/* String url[] = { ""};
	url[0] = "https://search.naver.com/search.naver?where=view&sm=tab_jum&query=" + keyword; */
	//url[1] = "https://search.naver.com/search.naver?where=view&sm=tab_jum&query=" + keyword;
		
	String title_save[] = { "div.cont_inner a.f_link_b", "a.api_txt_lines" };
	String content_save[] = { "div.cont_inner p", "div.total_group" };
	String regdate_save[] = { "div.cont_inner span.date", "span.etc_dsc_area span.sub_time" };
	String link_save[] = { "div.cont_inner span.f_l a.f_url",
	"div[class=total_area] a[class=api_txt_lines total_tit _cross_trigger]" };
	
	/* String _site_type[] = { "naver", "naver" }; */
	String _site_type = "naver";
	String _title;
	String _content;
	String _regdate;
	String _link;  
	
	
	//dto 객체 생성 
	BoardDTO dto = new BoardDTO();
	
	/* for (int j = 0; j < 2; j++) { */
		int inResult = 0;
		for (page_num = 1; page_num <= num; page_num++)

	/* _url = url[j]; */
	
	

	try {
		Document financePage = Jsoup.connect(_url).get();
		Document iFrameUrl = Jsoup.connect(_url).get();

		Elements title = iFrameUrl.select(title_save[1]); //제목
		Elements content = iFrameUrl.select(content_save[1]); //약간보이는 내용
		Elements regdate = iFrameUrl.select(regdate_save[1]); //작성일
		Elements link = iFrameUrl.select(link_save[1]);
		Element[] linkArray = link.toArray(new Element[1]);
		
		
	/* 	
		System.out.println(content);
		System.out.println(link); */
		
		/* System.out.println(content); */
		//System.out.println(title.size());
		/* System.out.println("링크의 갯수:"+link.size()+"/"+j);
		System.out.println("content의 갯수:"+content.size()); */
		//여기까지정상 
		
		 

	for (int i = 0; i < title.size(); i++) {
		_title = title.get(i).text();
		_content = content.get(i).text();
		_regdate = regdate.get(i).text();
		/* _link = link.get(i).text(); */
		/* if (_site_type.equals("naver")) {
			_link = link.attr("href");
		}   */
		
		/* System.out.println(_link);
		System.out.println(_content); */
		
		String hrefValue = null;
		 
		System.out.println(linkArray[i]);
		if (_site_type.equals("naver")) {
			hrefValue = linkArray[i].attr("href");
		}
		
		
		 
		dto.setSite(_site_type);
		dto.setTitle(_title);
		dto.setContent(_content);
		//dto.setSite(_regdata);
		dto.setLink(hrefValue);
		
		dto.setKeyword(keyword);
		
		dto.setTablename(tablename);
	
		
		
		
		// dto 객체 값들로 dao를 이용하여 데이터베이스에 접근하여 DB 저장
		dao.insertBoard(dto);
	}
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("크롤링중 예외 발생 ");
			}

	dao.close();
	
%>
		<script>
		location.href = '../crawling/CrawlingTemporaryList.jsp?tablename=<%=tablename%>';
		/* location.href = '../crawling/CrawlingDetaliList.jsp?'  */
	</script>
		 

		
  
	
