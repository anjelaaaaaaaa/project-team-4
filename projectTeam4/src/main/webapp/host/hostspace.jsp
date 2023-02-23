<%@page import="com.space4team.host.db.HostDTO"%>
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
                        <h1 class="b">Host mypage - 공간내역</h1>
                    </br></br>
                     <%
						String id=(String)session.getAttribute("id");
						int num = (Integer)request.getAttribute("num");
						%>		
                    <div class="h6 fw-bolder">호스트 <b><%=id %></b>님,</div></br>
                </div>
            </div>
            <!-- Call to Action-->
            <div class="card text-white bg-secondary my-5 py-4 text-center">
                <div class="card-body"><p class="text-white m-0">space4team</p></div>
            </div>
 			 <section class="py-5">
<!--                 <div class="container px-5 my-5"> -->
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">공간내역</h2>
                                <p class="lead fw-normal text-muted mb-5">호스트 <b><%=id %></b>님의 등록된 공간내역입니다</p>
                            </div>
                        </div>
                    </div>
                    <div class="row gx-5">
		<%
             ArrayList<SpaceDTO> spaceList = (ArrayList<SpaceDTO>)request.getAttribute("spaceList");
             int currentPage = (Integer)request.getAttribute("currentPage");
             int startPage = (Integer)request.getAttribute("startPage");
             int pageBlock = (Integer)request.getAttribute("pageBlock");
             int endPage = (Integer)request.getAttribute("endPage");
             int pageCount = (Integer)request.getAttribute("pageCount");
            
             HostDTO mdto = (HostDTO)request.getAttribute("mdto");
            
				for (int i = 0; i<spaceList.size(); i++){
					SpaceDTO dto = spaceList.get(i);
				%>            		
<div class="col-lg-4 mb-5">
    <div class="card h-100 shadow border-0">
        	<div class="card-body p-4">
            	<div class="badge bg-primary bg-gradient rounded-pill mb-2">공간번호<%=dto.getS_num() %></div>
           		 <a class="text-decoration-none " ><h5 class="card-title mb-3"><%=dto.getS_name() %></h5></a>
            	 <b><p class="card-text mb-0"><%=dto.getS_memo()%></p></b>
            	 <p class="m-0 text-muted"><%=dto.getS_address()%></p>
        	</div>
        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
            <div class="d-flex align-items-end justify-content-between">                    
				<div class="d-flex align-items-center" style="font-weight: bold; font-size: 25px;">
					<%=dto.getS_bill()%>원  
				</div>
				<code>최대 수용인원 :<%=dto.getS_max()%></code>
			  </div>
			  <br>
			  <div style="text-align:center;">
                <input type="button" name="write" value="수정" onclick="location.href='SpaceUpdateForm.sp?num=<%=dto.getS_num()%>'">
				<input type="button" name="delete" value="삭제" onclick="location.href='SpaceDeleteForm.sp?num=<%=dto.getS_num()%>'">
				<input type="button" name="detail" value="상세페이지" onclick="location.href='SpaceInfoPro.sp?num<%=dto.getS_num()%>'">
                  		</div>
                   </div>
               </div>
           </div>
			<%
			}
			%> 		
           </div>
           </div>
 			<div class="text-center">
           <%
				if(startPage > pageBlock){
			%>
				<a href="SpaceList.sp?pageNum=<%=startPage-pageBlock%>">Prev</a>
			<%
					}
					for(int i=startPage;i<=endPage;i++){
			%>
					<a href="SpaceList.sp?pageNum=<%=i%>"><%=i %></a> 
			<%
					}
				if(endPage < pageCount){
			%>
					<a href="SpaceList.sp?pageNum=<%=startPage+pageBlock%>">Next</a>
			<%
					}
           %>
 			</div>
            </section>
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