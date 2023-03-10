<%@page import="com.space4team.host.db.HostDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">	
	<head>
       <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content />
        <meta name="author" content />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
      <script src="script/jquery-3.6.3.js"></script>
      <script type="text/javascript" src="script/jquery-3.6.3.js"></script>
      
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                            <li class="nav-item"><a class="nav-link" href="faq.html">FAQ</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                    <li><a class="dropdown-item" href="blog-home.html">Blog Home</a></li>
                                    <li><a class="dropdown-item" href="blog-post.html">Blog Post</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Portfolio</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                                    <li><a class="dropdown-item" href="portfolio-overview.html">Portfolio Overview</a></li>
                                    <li><a class="dropdown-item" href="portfolio-item.html">Portfolio Item</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><p>&#x1F3E0</p></div>
                            <h1 class="fw-bolder">?????? ????????????</h1>
<!--                             <p class="lead fw-normal text-muted mb-0">????????? ??????????????? ??????????????????</p> -->
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                               
                               <%
								String id=(String)session.getAttribute("id");
								int num = (Integer)request.getAttribute("num");
								%>		
                               
                                <form action="SpaceInsertPro.sp" method = "post" enctype="multipart/form-data">
                            		<div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="hostnumber"> ????????? <b> <%=id %>???,</b> ????????? ????????? ????????? ??????????????????. </label><br>
                                    </div>
                                    <br>

                            		 <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">???????????? : <b><%=num %></b></label>
<%--                                         <input type="text" name="name" value="<%=dto.getH_name()%>"><br> --%>
                                    </div>
                                    <br>
                            		
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="name" type="text"   required title="???????????????!">
                                        <label for="name"><i class="bi bi-star-fill text-warning"></i>????????? ????????? ???????????????</label>
                                        <div class="invalid-feedback" data-sb-feedback="name:required">??????????????? ?????????.</div>
                                    </div>

									 <div >
                                         <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">????????? ??????????????? </label><br>
                                        <input type="number" name="bill" min="10000" max="5000000"> / hr 
                                        <br>
                                        <br>
                                    </div>
                                    
                                 	<div class="form-floating mb-3">
                                        <input class="form-control" name="max" type="text" placeholder="name@example.com" required title="???????????????!">
                                        <label for="max"><i class="bi bi-star-fill text-warning"></i>?????? ??????????????? ???????????????</label>
                                    </div>
                                 	
                                    
                                      <div class="form-floating mb-3">
                                        <input class="form-control" name="address" type="text" placeholder="name@example.com" required title="???????????????!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>????????? ???????????????</label>
                                        
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="sido" type="text" placeholder="name@example.com" required title="???????????????!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>??????????????? ??????????????? (???,???)</label>
                                    </div>
                                    
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="gungu" type="text" placeholder="name@example.com" required title="???????????????!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>??????????????? ??????????????? (???,???)</label>
                                    </div>
                                    
                                      <div class="form-floating mb-3">
                                        <textarea class="form-control" name="memo" type="text" placeholder="Enter your message here..." style="height: 10rem" required title="???????????????!"></textarea>
                                        <label for="message"><i class="bi bi-star-fill text-warning"></i>????????? ?????? ??????????????????</label>
                                    </div>
                               
                                    <div>
                                        <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">????????? ??????????????? ???????????????</label><br>
                                        <br>
                                   
                                    <label><input type="checkbox" name="option" value="???????????????"> ??????????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>
                                    <label><input type="checkbox" name="option" value="????????????"> ???????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>
                                    <label><input type="checkbox" name="option" value="??????"> ?????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>                     
                                    <label><input type="checkbox" name="option" value="???????????????"> ??????????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label>
                                    <label><input type="checkbox" name="option" value="?????????"> ????????????</label><br>
                                    <br>
								  </div>
								  
								  
                                    <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">????????? ????????? ???????????????</label><br>
                                        <br>
<!--                                         accept ????????? img/*??? ????????? ?????? ????????? ????????? ????????? ????????????  -->
                                       <input type="file" accept="image/*" onchange="PreviewImage(event);" name = "file" id="image" multiple >
                                    </div>
                                    <div id="image_container" ></div>
                                    <br>
                                    <br>
                                  
                                    <!-- Submit Button-->
                                       <div class="center">
                                    <input class="btn btn-primary btn-lg" href="#scroll-target" type="submit" value="??????????????????">
                                     <input class="btn btn-primary btn-lg" href="#scroll-target" type="reset" value="?????????">
                                     </div>
                                  </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                   <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5 justify-content-center">
                        
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-people"></i></div>
                            <div class="h5">Ask the community</div>
                            <p class="text-muted mb-0"><a href="community.jsp">??????????????? ????????????</a></p>
                        </div>
                        
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">??????????????????</p>
                            <p class="text-muted mb-0">09:00 - 17:00</p>
                            <p class="text-muted mb-0">??? 010-1234-5678</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2023</div></div>
                    <div class="col-auto">
                    </div>
                </div>
            </div>
        </footer>
      
 
<script>
function PreviewImage(event) {
    for (var image of event.target.files) {
      var reader = new FileReader();

      reader.onload = function(event) {
        var img = document.createElement("img");
        img.setAttribute("src", event.target.result);
        img.setAttribute("width", 250);
        document.querySelector("div#image_container").appendChild(img);
      };

      console.log(image);
      reader.readAsDataURL(image);
      
     
     
    
    }
  }


$(document).ready(function () { 
	alert('zzz');

	  
      $("").click(function () { 
    		alert('zzz');
    		$(this).remove(""); 
    	}) 
});

 </script>  



    </body>
    
    
</html>
    