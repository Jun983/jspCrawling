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
    <link rel="stylesheet" href="./styles.css">
    <link rel="stylesheet" href="./all.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
    <title>관리자 페이지</title>
</head>

<body>
<!--Container -->
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
								<div class="px-6 py-8 border-b border-light-grey">
									<div class="font-bold text-5xl">Manage System</div>
								</div>
								<div class="flex-grow"></div>
								<div class="px-3 py-8 border-b border-light-grey">
									<div class="font-bold text-xl input-group"><input type="text" placeholder="아이디를 입력하세요"/></div>
								</div>
								<div class="px-3 py-8 border-b border-light-grey">
									<div class="font-bold text-sm main-button"><a href="#">검색</a></div>
								</div>
								<div class="px-3 py-8 border-b border-light-grey">
									<div class="font-bold text-sm main-button"><a href="#">승급</a></div>
								</div>
								<div class="px-3 py-8 border-b border-light-grey">
									<div class="font-bold text-sm main-button"><a href="#">박탈</a></div>
								</div>
								<div class="px-3 py-8 border-b border-light-grey">
									<div class="font-bold text-sm main-button"><a href="#">삭제</a></div>
								</div>
							</div>
                            <div class="table-responsive">
                                <table class="table text-grey-darkest">
                                    <thead class="bg-grey-dark text-white text-normal">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">id</th>
                                        <th scope="col">name</th>
                                        <th scope="col">nickname</th>
                                        <th scope="col">email</th>
                                        <th scope="col">grade</th>
                                        <th scope="col">check</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    	for(int i = 1; i <= 10; i++) { // 10: 10개의 데이터가 있다고 치고
                                    %>
	                                    <tr>
	                                    	<th scope="row"><%=i %></th>
	                                        
	                                        <td>
	                                            <button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full">
	                                                Twitter
	                                            </button>
	                                        </td>
	                                        <td>4500</td>
	                                        <td>4600</td>
	                                        <td>4700</td>
	                                        <td>
	                                            <span class="text-green-500"><i class="fas fa-arrow-up"></i>5%</span>
	                                        </td>
	                                        <td><input type="checkbox" name="checkedMember"/></td>
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