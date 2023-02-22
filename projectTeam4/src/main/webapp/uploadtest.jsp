<%@page import="com.space4team.member.db.MemberDTO"%>
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
<!--       <script src="script/jquery-3.6.3.js"></script> -->
      <script type="text/javascript" src="script/jquery-3.6.3.js">
      
      function goPopup(){
    		// 주소검색을 수행할 팝업 페이지를 호출합니다.
    		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    		var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    		
    		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
    	}


    	function jusoCallBack(roadFullAddr,siNm,sggNm){
    			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
    			document.form.roadFullAddr.value = roadFullAddr;
    			document.form.siNm.value = siNm;
    			document.form.sggNm.value = sggNm;
    		
    			
    	}
      </script>
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
                            <h1 class="fw-bolder">공간 등록하기</h1>
<!--                             <p class="lead fw-normal text-muted mb-0">공간의 상세정보를 등록해주세요</p> -->
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
                                        <label for="hostnumber"> 호스트 <b> <%=id %>님,</b> 등록할 공간의 정보를 입력해주세요. </label><br>
                                    </div>
                                    <br>
                            		 <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간번호 : <b><%=num %></b></label>
<%--                                         <input type="text" name="name" value="<%=dto.getH_name()%>"><br> --%>
                                    </div>
                                    <br>
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="name" type="text"   required title="입력하세요!">
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
                                        <input class="form-control" name="max" type="text" placeholder="name@example.com" required title="입력하세요!">
                                        <label for="max"><i class="bi bi-star-fill text-warning"></i>최대 수용인원을 알려주세요</label>
                                    </div>
                                    
                                    

	<input type="button" onClick="goPopup();" value="팝업_domainChk"/>
	<div id="list"></div>
	<div id="callBackDiv">
		<table>
			<tr><td>도로명주소 전체(포멧)</td><td><input type="text"  style="width:500px;" id="roadFullAddr"  name="roadFullAddr" /></td></tr>
			<tr><td>시도명        		</td><td><input type="text"  style="width:500px;" id="siNm"  name="siNm" /></td></tr>
			<tr><td>시군구명        	</td><td><input type="text"  style="width:500px;" id="sggNm"  name="sggNm" /></td></tr>
		</table>
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
                                        <label for="phone">공간의 옵션정보를 알려주세요</label><br>
                                        <br>
                                    <label><input type="checkbox" name="option" value="엘레베이터"> 엘레베이터　</label>
                                    <label><input type="checkbox" name="option" value="주차장"> 주차장　</label>
                                    <label><input type="checkbox" name="option" value="와이파이"> 와이파이　</label>
                                    <label><input type="checkbox" name="option" value="화장실"> 화장실　</label>
                                    <label><input type="checkbox" name="option" value="콘센트"> 콘센트　</label>
                                    <label><input type="checkbox" name="option" value="난방"> 난방　</label>
                                    <label><input type="checkbox" name="option" value="에어컨"> 에어컨　</label>                     
                                    <label><input type="checkbox" name="option" value="빔프로젝트"> 빔프로젝트　</label>
                                    <label><input type="checkbox" name="option" value="노트북"> 노트북　</label>
                                    <label><input type="checkbox" name="option" value="사물함"> 사물함　</label>
                                    <label><input type="checkbox" name="option" value="프린터"> 프린터　</label><br>
                                    <br>
								  </div>

                                    <div>
                                    	 <i class="bi bi-star-fill text-warning"></i>
                                        <label for="phone">공간의 사진을 등록하세요<code>(삭제 버튼 클릭시 전체 이미지가 초기화됩니다)</code></label><br>
                                        <br>
<!--                                         accept 속성을 img/*로 지정할 경우 이미지 파일만 업로드 가능해짐  -->
                                       <input type="file" accept="image/*" onchange="PreviewImage(event);" name = "file" class ="inp-img" id="image" multiple >
                                       <span class="btn-delete"><code>삭제</code></span>
                                    </div>
                                    <div id="preview"></div>
<!--                                     <div id="image_container" ></div> -->
                                    <br>
                                    <br>
                                  
                                    <!-- Submit Button-->
                                       <div class="center">
                                    <input class="btn btn-primary btn-lg" href="#scroll-target" type="submit" value="공간등록하기">
                                     <input class="btn btn-primary btn-lg" href="#scroll-target" type="reset" value="초기화">
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
                            <p class="text-muted mb-0"><a href="community.jsp">문의게시판 바로가기</a></p>
                        </div>
                        
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">상담가능시간</p>
                            <p class="text-muted mb-0">09:00 - 17:00</p>
                            <p class="text-muted mb-0">☎ 010-1234-5678</p>
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
        document.querySelector("div#preview").appendChild(img);
      };

      console.log(image);
      reader.readAsDataURL(image);
    }
  }

// function readInputFile(input){
// 	if(input.files && input.files[0]){
// 		var reader = new FileReader();
// 		reader.onload = function (e) {
// 			$('#preview').html("<img src="+e.target.result +">");
			
// 		}
// 		reader.readAsDataURL(input.files[0]);
// 	}
// }

// $(".inp-img").on('change', function(){
// 	readInputFile(this);
// });

function resetInputFile($input, $preview){
	var agent = navigator.userAgent.toLowerCase();
	if((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)){
	
		$input.replaceWith($input.clone(true));
		$preview.empty();
	} else {
		$input.val("");
		$preview.empty();
	}
}

$(".btn-delete").click(function(event){
	var $input = $(".inp-img");
	var $preview = $('#preview');
	resetInputFile($input, $preview);
});


 </script>  
    </body>  
</html>