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
<header>


</header>

<!--Container -->
<%
	// id ���Ǻ��� �ȿ� �ִ� �� ������ ����
	String id = (String)session.getAttribute("id");
	PrintWriter script = response.getWriter();
	System.out.println(id);

	// id ���Ǻ��� �ȿ� �ִ� ���� ���� ����
	if (id == null) {
		script.println(JSFunction.executeAlert("�α��� �� �̿����ּ���", "../member/LoginForm.jsp"));
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
								<div class="flex-grow"></div>
								<div class="px-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-xl input-group">
										<input type="text" id="searchIdInput" placeholder="���̵� �Է��ϼ���"/>
									</div>
								</div>
								<div class="sm\:pr-3 py-4 border-b border-light-grey w-auto">
									<div class="font-bold text-sm main-button">
										<input type="button" value="�˻�" onclick="searchById()"/>
									</div>
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
	                                 	// ����¡ ó��
	                                	
	                                	// ������ ��ȣ�� �ޱ�
	                                    String pageString = request.getParameter("page");
	                                    int currentPage = Integer.parseInt(pageString);
	                                    System.out.println("���� ������ ��ȣ: " + currentPage);
	
	                                    // �� �������� ������ ������ ����
	                                    int itemsPerPage = 10;
	
	                                    // ������ ��ȸ�� ���� ���� �ε����� ���� �ε����� ���
	                                    int startIndex = (currentPage - 1) * itemsPerPage;
	                                    int endIndex = startIndex + itemsPerPage - 1;
	                                    
	                                    
	                                    // �����ͺ��̽��� ����� ������ Ʃ�� ���� ���
	                                    int totalItems = dao.selectMemberNum();
	
	                                    // ��ü ������ ������ ���
	                                    int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);
	                                    System.out.println("��ü ������ ����: " + totalPages);
	
	                                    // ������ ������ �ʰ��� ���, ���� �������� ����
	                                    if (currentPage > totalPages) {
	                                        currentPage = totalPages;
	                                        startIndex = (currentPage - 1) * itemsPerPage;
	                                        endIndex = startIndex + itemsPerPage - 1;
	                                    }
	                                    System.out.println("���� �ε���: " + startIndex);
	                                    System.out.println("���� �ε���: " + endIndex);
	                                    
	                                    //=========================================================
                                    
                                    	// �˻�â���� �Էµ� id�� ������ ����
                                    	String searchId = request.getParameter("searchId");
                                    	
                                    	// id�� ���� ���� �ش��ϴ� id�� ������ ���� ���� �� ArrayList�� ����
                                        ArrayList<MemberDTO> arr;
                                    	
                                    	// ������ �� ������ �����ͺ��̽��� �ִ� ��� ���� ���� �� ArrayList�� ����
                                    	if(searchId.equals("NULL"))
                                    		arr = dao.selectMember(startIndex, endIndex + 1);
                                    	else
                                    		arr = dao.selectMember(searchId, startIndex, endIndex + 1);
                                    	
                                    	dao.close();
                                    	
                                    	//===========================================================
                                        
                                    	// count�� �̿��ؼ� startIndex���� endIndex������ �������� ������ŭ ����
                                        int count = startIndex;
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
                                    		System.out.println(count);
                                    		if(count == endIndex || count >= totalItems)
                                    			break;
                                    		
                                    		count++;
                                    	}
                                    %>
                                    </tbody>
                                </table>
       						</div>
       						</form>
                        </div>
                    </div>
                </div>
                <!-- ����¡ ó�� -->
                <div class="font-bold text-sm main-button">
				    <%-- ���� ������ ��ư --%>
				    <a href="./ManageForm.jsp?page=<%=currentPage - 1 %>&searchId=<%=searchId %>"
				       class="px-3 py-1 bg-blue-500 text-white font-semibold rounded-md <%= (currentPage == 1) ? "opacity-50 cursor-not-allowed" : "" %>">
				        ����
				    </a>
				
				    <%-- ������ ��ȣ ��ư --%>
				    <% for (int i = 1; i <= totalPages; i++) { %>
				        <a href="./ManageForm.jsp?page=<%=i %>&searchId=<%=searchId %>"
				           class="px-3 py-1 mx-1 bg-blue-500 text-white font-semibold rounded-md <%= (currentPage == i) ? "bg-blue-700" : "" %>">
				            <%=i %>
				        </a>
				    <% } %>
				
				    <%-- ���� ������ ��ư --%>
				    <a href="./ManageForm.jsp?page=<%=currentPage + 1 %>&searchId=<%=searchId %>"
				       class="px-3 py-1 bg-blue-500 text-white font-semibold rounded-md <%= (currentPage == totalPages) ? "opacity-50 cursor-not-allowed" : "" %>">
				        ����
				    </a>
				</div>
				<!-- ��ư ó�� -->
	            <div class="flex justify-end">
		            <div class="px-3 py-8 border-b border-light-grey">
						<div class="font-bold text-sm main-button">
							<input type="submit" id="myButton" value="�±�" onclick="handleSubmit(event)"/>
						</div>
					</div>
					<div class="px-3 py-8 border-b border-light-grey">
						<div class="font-bold text-sm main-button">
							<input type="submit" id="myButton" value="��Ż" onclick="handleSubmit(event)"/>
						</div>
					</div>
					<div class="px-3 py-8 border-b border-light-grey">
						<div class="font-bold text-sm main-button">
							<input type="submit" id="myButton" value="����" onclick="handleSubmit(event)"/>
						</div>
					</div>
				</div>
            </main>
        </div>
    </div>
</div>

<script>
//Submit ��ư Ŭ�� �� ����Ǵ� �Լ�
function handleSubmit(event) {
    event.preventDefault(); // ���� �⺻ ����(������ ���ΰ�ħ)�� ���� ���� ȣ���մϴ�.

    // ���ϴ� ���ǿ� ���� �ٸ� action URL�� �����մϴ�.
    var form = document.getElementById("myForm");
    if (event.target.value == "�±�") {
        form.action = "./UpgradeMemberProc.jsp";
    } else if (event.target.value == "��Ż") {
        form.action = "./DowngradeMemberProc.jsp";
    } else if (event.target.value == "����") {
        form.action = "./DeleteMemberProc.jsp";
    }

    form.submit(); // ������ action URL�� ���� �����մϴ�.
}

// �Է��� ���̵� url�� ���ؼ� ����
function searchById() {
    var searchId = document.getElementById("searchIdInput").value;
    if (searchId.trim() === "") {
        alert("���̵� �Է����ּ���.");
    } else {
    	var encodedSearchId = encodeURIComponent(searchId);
        window.location.href = "./ManageForm.jsp?page=1&searchId=" + encodedSearchId;
    }
}
</script>
</body>

</html>