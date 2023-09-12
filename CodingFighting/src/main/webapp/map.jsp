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
<title>Main Page</title>

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
    <jsp:include page="navbar.jsp" flush="true" />
   </header>
   
   <main>
   <!-- * 카카오맵 - 지도퍼가기 -->
   <!-- 1. 지도 노드 -->
   <div id="daumRoughmapContainer1673509454044" class="root_daum_roughmap root_daum_roughmap_landing" style="margin:0 auto; margin-top:100px; text-align:center"></div>
   
   <!--
      2. 설치 스크립트
      * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
   -->
   <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
   
   <!-- 3. 실행 스크립트 -->
   <script charset="UTF-8">
   new daum.roughmap.Lander({
      "timestamp" : "1673509454044",
      "key" : "2deqn",
      "mapWidth" : "800",
      "mapHeight" : "500",
   }).render();
   </script>

<hr class="featurette-divider">
      <!-- FOOTER -->
      <a href="https://www.facebook.com/hera.kr" id="foot"
         style="margin-left: 820px;" target="_blank"><i
         class="fa-brands fa-facebook"></i></a> <a
         href="https://www.youtube.com/user/HeraKorea" id="foot"
         target="_blank"><i class="fa-brands fa-youtube"></i></a> <a
         href="https://www.instagram.com/herabeauty_official/" id="foot"
         target="_blank"><i class="fa-brands fa-instagram"></i></a> <a
         href="https://pf.kakao.com/_dbxjxnK" id="foot" target="_blank"><i
         class="fa-brands fa-kickstarter"></i></a>
      <footer class="container">
         <p class="float-end">
            <a href="#"><i class="fa-solid fa-circle-up" style="color:#b8b9ba; font-size:30px;"></i></a>
         </p>
         <p>
            &copy; © AMOREPACIFIC CORPORATION. All rights reserved. 
         </p>
      </footer>
   </main>

   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"></script>
   <script src="/js/bootstrap.bundle.min.js"></script>


</body>
</html>