<!doctype html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<title>brand</title>

<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<style>
/*    font awesome cdn */
@import
	url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");

#img_btn {
	/*          color: rgb(169, 169, 169); */
	color: rgba(255, 255, 255, 0.75);
	font-size: 20px;
	padding: 5px;
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

/*     navbar */
body>header>nav {
	position: relative;
	height: 80px;
	opacity: 0.8;
}

#foot {
	font-size: 26px;
	color: rgba(169, 169, 169);
	padding: 20px;
}

/*     Carousel 자세히 보기 버튼의 border*/
#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(4)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(3)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(2)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(1)>a
	{
	border: 1px solid black;
}

/*     메인페이지 Carousel 크기 조정 */
#myCarousel>div.carousel-inner {
	height: 685px;
	margin-top: -45px;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	z -moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	.nav-scroller {
		position: relative;
		z-index: 2;
		height: 2.75rem;
		overflow-y: hidden;
	}
	.nav-scroller .nav {
		display: flex;
		flex-wrap: nowrap;
		padding-bottom: 1rem;
		margin-top: -1px;
		overflow-x: auto;
		text-align: center;
		white-space: nowrap;
		-webkit-overflow-scrolling: touch;
	}
	body>main>div.main_story>div>a {
		text-decoration: none;
	}
	
}

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      /*브랜드 소개*/

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    
</style>


<!-- Custom styles for this template -->
</head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>

	<header>
		<!--     aria-currnet="" 페이지 이름 명명 -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark"
			style="height: 80px; background: linear-gradient(307deg, #cdcfd1 4%, rgb(0 0 0) 88%, rgb(0, 0, 0) 100%);">
			<div class="container-fluid">
				<a class="navbar-brand" href="/main.jsp"
					style="font-size: 28px; margin-left: 305px; font-weight: bold;">H
					E R A</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-config="autoClose" data-bs-toggle="dropdown"
							aria-expanded="false"
							style="margin-left: 41px; color: white; font-size: 16px; font-weight: 600;">
								헤라 스토리 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/brand.jsp" style="">브랜드 소개</a></li>
								<li><a class="dropdown-item" href="/map.jsp">오시는 길</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								메이크업 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">페이스</a></li>
								<li><a class="dropdown-item" href="#">립</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="#">아이</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								스킨케어 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">클렌징</a></li>
								<li><a class="dropdown-item" href="#">스킨/로션</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="#">마스크/팩</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active" href="#"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">고객센터</a>
						</li>
	<% 
 	if(userID != null && userID.equals("admin")) {
	%> 
						<li class="nav-item"><a class="nav-link active" href="/sellPage.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">상품등록</a>
						</li>
	<% 
 	}
	%> 
					</ul>
	<%
	if(userID != null) {
	%>
					<a href="/logout.jsp" class="btm_login" id="img_btn"> 
			     	<i class="fa-solid fa-right-from-bracket"></i></a>
					<a href="/myPage.jsp" class="btm_myPage" id="img_btn"> 
					<i class="fa-solid fa-user"></i></a>
	<%
	}
	%>
					
	<%
	if(userID == null) {
	%>
					<a href="/login.jsp" class="btm_login" id="img_btn"> 
					<i class="fa-solid fa-right-to-bracket"></i></a> 
					<a href="/myPage.jsp" class="btm_myPage" id="img_btn"> 
					<i class="fa-regular fa-user"></i></a>
	<%
	}
	%>
					
					<a href="/cart.jsp" class="btm_cart" id="img_btn" style="margin-right: 269px">
					<i class="fa-solid fa-cart-shopping"></i></a>
					<!--  </form> -->
				</div>
			</div>
		</nav>
	</header>

	<main>
 <div class="container px-4 py-5">
    <header class="pb-3 mb-3 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        <span class="fs-4">HERA STORY</span>
      </a>
    </header>

    <div class="p-5 mb-4 bg-light rounded-3"> 
      	<img alt="" src="https://www.hera.com/kr/ko/resource/image/story/brand/content/bs-img05.png">
        <h1 class="display-5 fw-bold">H E R A</h1>
        <p class="col-md-8 fs-4"><p> 당당하고 강인한 자아와 내면 그 깊은 곳에서부터 <br class="br4">존재하는 나만의 아름다움을 스스로 발견하고 <br>
                  자신 있게 드러내는 것이 서울 뷰티에 대한 헤라의 신념입니다. </p>
    </div>

    <div class="row align-items-md-stretch">
      <div class="col-md-6">
          <img alt="" src="https://www.hera.com/kr/ko/resource/image/story/brand/content/bs-img02.png">
          <h2>PRODUCT</h2>
          <p>From the base that exudes its natural beauty to the colors expressed in various moods according to your taste, Hera's makeup completes the most unique charm with elaborate details.</p>
          <button class="btn btn-outline-light" type="button">Example button</button>
      </div>
      
      <div class="col-md-6">
        <img alt="" src="https://www.hera.com/kr/ko/resource/image/story/brand/content/bs-img03_200429.jpg">
          <h2>SEOULISTA</h2>
          <p>The beauty of Seoulista, at the center of it, is 'me-like'.
			You understand expressions that suit you better than anyone else and explore yourself.
			without sparing passion and over-dressing
			Complete the attractive style with your own taste and way.</p>
        </div>
      </div>
   </div>
  
		
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>


</body>
</html>