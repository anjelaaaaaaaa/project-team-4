<%@page import="com.space4team.space.db.SpaceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Small Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="css2/styles.css" rel="stylesheet" />
        
    <style>

      h1.b:after {
        content: "";
        display: block;
        width: 1200px;
        border-bottom: 1px solid #bcbcbc;
        margin: 20px 0px;
      }
		div.fw-bolder{
		margin-left: 10px;
	}
	.btn-sm, .btn-group-sm > .btn {
		margin-left: 130px;
	}
    #sidebar{
   width: 15%;
   height: 680px;
   background-color: #212529;
   float: left;
   font-weight:bold; 
   font-size:large;
	}
    </style>
        
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content-->
 
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5">
                <div class="col-lg-5">
                        <h1 class="b">공간내역</h1>
                    </br>
                    </br>
                    
                     <%
						String id=(String)session.getAttribute("id");
						int num = (Integer)request.getAttribute("num");
						%>		
                    <div class="h6 fw-bolder">호스트 <%=id %>님</div>
                    </br>
                    <a class="btn btn-primary" href="spaceupdate.jsp">회원정보수정</a>
                    <a class="btn btn-primary" href="#!">회원탈퇴</a>  
                </div>
            </div>
            
            <!-- Call to Action-->
            <div class="card text-white bg-secondary my-5 py-4 text-center">
                <div class="card-body"><p class="text-white m-0">This call to action card is a great place to showcase some important information or display a clever tagline!</p></div>
            </div>

		<%
             ArrayList<SpaceDTO> spaceList = (ArrayList<SpaceDTO>)request.getAttribute("spaceList");
      
             int currentPage = (Integer)request.getAttribute("currentPage");
             int startPage = (Integer)request.getAttribute("startPage");
             int pageBlock = (Integer)request.getAttribute("pageBlock");
             int endPage = (Integer)request.getAttribute("endPage");
             int pageCount = (Integer)request.getAttribute("pageCount");
            
            	 %>         
            <table border="1">
             		<tr><td>공간번호 </td><td>공간이름 </td><td>공간주소 </td><td>최대수용인원 </td><td>가격</td></tr>
            <%
             	for (int i = 0; i<spaceList.size(); i++){
             		SpaceDTO dto = spaceList.get(i);
             		%>
             		
             		 <tr><td><a href="SpaceUpdateForm.sp?num=<%=dto.getS_num()%>"><%=dto.getS_num() %></a></td>
             			<td><%=dto.getS_name()%></td>
             			<td><%= dto.getS_address()%></td>
             			<td><%= dto.getS_max() %></td>
             			<td><%= dto.getS_bill() %></td>
             			<td><input type="button" name="write" value="수정" onclick="location.href='SpaceUpdateForm.sp?num=<%=dto.getS_num()%>'"></td>
                        <td><input type="button" name="delete" value="삭제" onclick="location.href='SpaceDeleteForm.sp?num=<%=dto.getS_num()%>'"></td></tr>                                    	  
             		<%
             	}
            %>
            	</table>

              <div class="row gx-5">
            <!-- 공간프리뷰 1 -->	
		<div class="col-lg-4 mb-5">
		    <div class="card h-100 shadow border-0">
		        <img class="card-img-top" src="s1.jpg" alt="..." />
		        	<div class="card-body p-4">
		            	<div class="badge bg-primary bg-gradient rounded-pill mb-2">New</div>
		           		 <a class="text-decoration-none link-dark stretched-link" href="spaceupdate.jsp"><h5 class="card-title mb-3">꿈나라 스터디룸</h5></a>
		            	 <p class="card-text mb-0">서면역 5분거리</p>
		        	</div>
        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
            <div class="d-flex align-items-end justify-content-between">
                <div class="d-flex align-items-center">
<!--                			 호스트 프로필 사진 -->
<!--                          <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                             <div class="small">
                                   <div class="fw-bold"></div>
                                   <button class="button1"><a href="spaceupdate.jsp">수정</a></button>
                                   <button class="button2">삭제</button>
                                    <a href="#" class="notification">
									  <span>리뷰 답글 달기</span>
									  <span class="badge">3</span>
									</a>
                                   <div class="text-muted">
                                  
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
<!-- 공간프리뷰 2 -->	
<div class="col-lg-4 mb-5">
    <div class="card h-100 shadow border-0">
        <img class="card-img-top" src="s1.jpg" alt="..." />
        	<div class="card-body p-4">
            	<div class="badge bg-primary bg-gradient rounded-pill mb-2">New</div>
           		 <a class="text-decoration-none link-dark stretched-link" href="spaceupdate.jsp"><h5 class="card-title mb-3">꿈나라 스터디룸</h5></a>
            	 <p class="card-text mb-0">서면역 5분거리</p>
        	</div>
        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
            <div class="d-flex align-items-end justify-content-between">
                <div class="d-flex align-items-center">
<!--                			 호스트 프로필 사진 -->
<!--                          <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                             <div class="small">
                                   <div class="fw-bold"></div>
                                   <button class="button1"><a href="spaceupdate.jsp">수정</a></button>
                                   <button class="button2">삭제</button>
                                    <a href="#" class="notification">
									  <span>리뷰 답글 달기</span>
									  <span class="badge">3</span>
									</a>
                                   <div class="text-muted">
                                  
                                   </div>
                               </div>
                           </div>
                   </div>
               </div>
           </div>
           <!-- 공간프리뷰 3 -->	
<div class="col-lg-4 mb-5">
    <div class="card h-100 shadow border-0">
     
        <img class="card-img-top" src="s1.jpg" alt="..." />
        	<div class="card-body p-4">
            	<div class="badge bg-primary bg-gradient rounded-pill mb-2">New</div>
           		 <a class="text-decoration-none link-dark stretched-link" href="spaceupdate.jsp"><h5 class="card-title mb-3">꿈나라 스터디룸</h5></a>
            	 <p class="card-text mb-0">서면역 5분거리</p>
        	</div>
        	       
        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">

            <div class="d-flex align-items-end justify-content-between">
            
                <div class="d-flex align-items-center">
                
<!--                			 호스트 프로필 사진 -->
<!--                          <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                             <div class="small">
                             	 
                                   <div class="fw-bold"></div>
                                  
                                   <button class="button1"><a href="spaceupdate.jsp">수정</a></button>
                                   <button class="button2">삭제</button>
                                    <a href="" class="notification">
									  <span>리뷰 답글 달기</span>
									  <span class="badge">3</span>
									</a>
                                   <div class="text-muted">
                                  
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
      
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-4 px-lg-5"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
    