<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="tailwind,tailwindcss,tailwind css,css,starter template,free template,admin templates, admin template, admin dashboard, free tailwind templates, tailwind example">
    <!-- Css -->
    <!--
    
    -->
    <link rel="stylesheet" href="../css/styles.css">
    <!--<link rel="stylesheet" href="../css/all.css">-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
    <title>관리자 페이지</title>
</head>

<body>
<!--Container -->
<%
	// id 세션변수 안에 있는 값 변수에 저장
	String id = (String)session.getAttribute("id");
	PrintWriter script = response.getWriter();
	System.out.println(id);

	// id 세션변수 안에 있는 값에 따라 제어
	if (id == null) {
		script.println(JSFunction.executeAlert("로그인 후 이용해주세요", "../member/Logout.jsp"));
		script.close();
	}	

	// id와 관련된 grade 추출 후 제어
	MemberDAO dao = new MemberDAO();
	String grade = dao.selectMemberGrade(id);
	System.out.println(grade);
	
	if (!(grade.equals("manager"))) {
		script.println(JSFunction.executeAlert("관리자가 아닙니다. 관리자로 로그인 해주신 후 이용해주세요.", "../member/LoginForm.jsp"));
		dao.close();
		script.close();
	}
%>

<div class="mx-auto bg-grey-400">
    <!--Screen-->
    <div class="min-h-screen flex flex-col">
        <div class="flex flex-1">
            <!--Main-->
            <main class="bg-white-300 flex-1 p-3 overflow-hidden">

                <div class="flex flex-col">
				
                    <!-- Card Sextion Starts Here -->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">

                        <!-- card -->

                        <div class="rounded overflow-hidden shadow bg-white mx-2 w-full">
                            <div class="flex">
								<div class="px-8 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-5xl">Manage System</div>
								</div>
								<div class="px-8 py-4 border-b border-light-grey w-1\/2">

								</div>
								<div class="flex-grow"></div>
								<div class="px-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-xl input-group"><input type="text" placeholder="아이디를 입력하세요"/></div>
								</div>
								<div class="sm\:pr-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-sm main-button"><a href="#">검색</a></div>
								</div>
							</div>
							<form action="" method="post" id="myForm">
                            <div class="table-responsive">
                                <table class="table text-center text-grey-darkest">
                                    <thead class="bg-grey-dark text-white text-normal">
                                    <tr>
                                        <th scope="col" class="table-short">#</th>
                                        <th scope="col" class="table-normal">name</th>
                                        <th scope="col" class="table-normal">id</th>
                                        <th scope="col" class="table-normal">grade</th>
                                        <th scope="col" class="table-normal">nickname</th>
                                        <th scope="col" class="table-long">email</th>
                                        <th scope="col" class="table-long">regidate</th>
                                        <th scope="col" class="table-short">check</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        // 데이터 전부 출력 후 ArrayList에 저장
                                        ArrayList<MemberDTO> arr = dao.selectMember();
                                        dao.close();
                                    	for(MemberDTO dto: arr) {
                                    %>
	                                    <tr>
	                                    	<th scope="row"><%=dto.getNum() %></th>
	                                        <td><%=dto.getName() %></td>
	                                        <td><%=dto.getId() %></td>
	                                        <td><%=dto.getGrade() %></td>
	                                        <td><%=dto.getNickname() %></td>
	                                        <td><%=dto.getEmail() %></td>
	                                        <td><%=dto.getRegidate() %></td>
	                                        <td><input type="checkbox" name="checkId" value="<%=dto.getId() %>"/></td>
	                                    </tr>	
                                    <%		
                                    	}
                                    %>
                                    </tbody>
                                </table>
                                <div class="flex justify-end">
	                                <div class="px-3 py-8 border-b border-light-grey">
										<div class="font-bold text-sm main-button"><input type="submit" id="myButton" value="승급" onclick="handleSubmit(event)"/></div>
									</div>
									<div class="px-3 py-8 border-b border-light-grey">
										<div class="font-bold text-sm main-button"><input type="submit" id="myButton" value="박탈" onclick="handleSubmit(event)"/></div>
									</div>
									<div class="px-3 py-8 border-b border-light-grey">
										<div class="font-bold text-sm main-button"><input type="submit" id="myButton" value="삭제" onclick="handleSubmit(event)"/></div>
									</div>
								</div>
       						</div>
       						</form>
                        </div>
                    </div>
                </div>
            </main>
            <!--/Main-->
        </div>
    </div>

</div>
<script>
//Submit 버튼 클릭 시 실행되는 함수
function handleSubmit(event) {
    event.preventDefault(); // 폼의 기본 동작(페이지 새로고침)을 막기 위해 호출합니다.

    // 원하는 조건에 따라 다른 action URL을 설정합니다.
    var form = document.getElementById("myForm");
    if (event.target.value == "승급") {
        form.action = "./UpgradeMemberProc.jsp";
    } else if (event.target.value == "박탈") {
        form.action = "./DowngradeMemberProc.jsp";
    } else if (event.target.value == "삭제") {
        form.action = "./DeleteMemberProc.jsp";
    }

    form.submit(); // 설정된 action URL로 폼을 제출합니다.
}
</script>
</body>

</html>