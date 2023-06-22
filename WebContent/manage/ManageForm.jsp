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
    <title>������ ������</title>
</head>

<body>
<!--Container -->
<%
	// id ���Ǻ��� �ȿ� �ִ� �� ������ ����
	String id = (String)session.getAttribute("id");
	PrintWriter script = response.getWriter();
	System.out.println(id);

	// id ���Ǻ��� �ȿ� �ִ� ���� ���� ����
	if (id == null) {
		script.println(JSFunction.executeAlert("�α��� �� �̿����ּ���", "../member/Logout.jsp"));
		script.close();
	}	

	// id�� ���õ� grade ���� �� ����
	MemberDAO dao = new MemberDAO();
	String grade = dao.selectMemberGrade(id);
	System.out.println(grade);
	
	if (!(grade.equals("manager"))) {
		script.println(JSFunction.executeAlert("�����ڰ� �ƴմϴ�. �����ڷ� �α��� ���ֽ� �� �̿����ּ���.", "../member/LoginForm.jsp"));
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
								<div class="px-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-xl input-group"><input type="text" placeholder="���̵� �Է��ϼ���"/></div>
								</div>
								<div class="sm\:pr-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-sm main-button"><a href="#">�˻�</a></div>
								</div>
							</div>
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
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        // ������ ���� ��� �� ArrayList�� ����
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
	                                    </tr>	
                                    <%		
                                    	}
                                    %>
                                    </tbody>
                                </table>
       						</div>
                        </div>
                    </div>
                </div>
            </main>
            <!--/Main-->
        </div>
    </div>

</div>
<script src="./main.js"></script>
</body>

</html>