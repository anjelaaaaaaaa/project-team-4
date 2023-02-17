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
                            <h1 class="fw-bolder">수정하기</h1>
                            <p class="lead fw-normal text-muted mb-0">공간의 상세정보를 등록해주세요</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <!-- * * * * * * * * * * * * * * *-->
                                <form action="SpaceInsertPro.me" method = "post" >
                            		<div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="hostnumber">***host님, 등록할 공간의 정보를 입력해주세요. </label><br>
                                    </div>
                                    <br>

                            		 <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간번호 자동부여될 위치(일단 임시로 공간부여 직접쓰기) </label><br>
                                        <input type="text" name="spacenumber">
                                    </div>
                                    <br>
                            		
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="name" type="text"   data-sb-validations="required" />
                                        <label for="name"><i class="bi bi-star-fill text-warning"></i>공간의 이름을 지어주세요</label>
                                        <div class="invalid-feedback" data-sb-feedback="name:required">필수입력란 입니다.</div>
                                    </div>

									 <div >
                                         <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">요금을 설정하세요 </label><br>
                                        <input type="number" name="bill" min="10000" max="5000000"> / hr 
                                        <br>
                                        <br>
                                    </div>
                                    
                                      <div class="form-floating mb-3">
                                        <input class="form-control" name="address" type="text" placeholder="name@example.com" required title="입력하세요!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>주소를 입력하세요</label>
                                        
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="sido" type="text" placeholder="name@example.com" required title="입력하세요!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>위치정보를 입력하세요 (시,도)</label>
                                    </div>
                                    
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="gungu" type="text" placeholder="name@example.com" required title="입력하세요!">
                                        <label for="location"><i class="bi bi-star-fill text-warning"></i>위치정보를 입력하세요 (군,구)</label>
                                    </div>
                                    
                                      <div class="form-floating mb-3">
                                        <textarea class="form-control" name="memo" type="text" placeholder="Enter your message here..." style="height: 10rem" required title="입력하세요!"></textarea>
                                        <label for="message"><i class="bi bi-star-fill text-warning"></i>공간에 대해 설명해주세요</label>
                                    </div>
                               
                                    <div>
                                        <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간의 기본정보를 알려주세요</label><br>
                                        <br>
                                   
                                    <label><input type="checkbox" name="color" value="red" name="elevator"> 엘레베이터　</label>
                                    <label><input type="checkbox" name="color" value="red" name="parking"> 주차장　</label>
                                    <label><input type="checkbox" name="color" value="red" name="wifi"> 와이파이　</label>
                                    <label><input type="checkbox" name="color" value="red" name="toilet"> 화장실　</label>
                                    <label><input type="checkbox" name="color" value="red" name="outlet"> 콘센트　</label>
                                    <label><input type="checkbox" name="color" value="red" name="heat"> 난방　</label>
                                    <label><input type="checkbox" name="color" value="red" name="aircontroller"> 에어컨　</label><br>
                                    <br>
                                     </div>
                                      
                                    <div>
                                       <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간의 유료옵션과 가격정보를 추가하세요</label><br>
                                        <br>
                                 
                                    <label><input type="checkbox" name="color" value="red" name="projector"> 빔프로젝트　</label> <input type="number"  min="10000" max="5000000">
                                    <label><input type="checkbox" name="color" value="red" name="labtop"> 노트북　</label> <input type="number"  min="10000" max="5000000"> <br>
                                    <br>
                                    <label><input type="checkbox" name="color" value="red" name="cabinet"> 사물함　</label> <input type="number"  min="10000" max="5000000">
                                    <label><input type="checkbox" name="color" value="red" name="printer"> 프린터　</label> <input type="number"  min="10000" max="5000000"><br>
                                    <br>
								  </div>
                                      <!-- Phone number input-->
                                    <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간의 사진을 등록하세요</label><br>
                                        <br>
<!--                                         accept 속성을 img/*로 지정할 경우 이미지 파일만 업로드 가능해짐  -->
                                       <input type="file" accept="image/*" onchange="PreviewImage(event);"  id="image" multiple >
                                    </div>
                                    <div id="image_container"></div>
                                    <br>
                                   
                                    <br>
                                    <!-- Submit success message-->
                                    <div class="d-none" id="submitSuccessMessage">
                                        <div class="text-center mb-3">
                                            <div class="fw-bolder">등록이 완료되었습니다.</div>
                                            <br />
                                            <a href="index.html">예약관리 페이지로 이동</a>
                                        </div>
                                    </div>
                                    <!-- Submit error message-->
                                    <!-- This is what your users will see when there is-->
                                    <!-- an error submitting the form-->
                                  
                                    <!-- Submit Button-->
                                    <input class="btn btn-primary btn-lg" href="#scroll-target" type="submit" value="수정하기">
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                   <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5 justify-content-center">
<!--                     <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5"> -->
                        
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-people"></i></div>
                            <div class="h5">Ask the community</div>
                            <p class="text-muted mb-0">설명적기 </p>
                        </div>
                        
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">설명적기</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
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
    </script>
   
    </body>
</html>
    